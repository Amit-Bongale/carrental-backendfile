const jwt = require('jsonwebtoken');

const VerifyToken = (req, res, next) => {
    // Check if the token is present in cookies or headers
    const token = req.cookies?.token || req.headers.authorization?.split(' ')[1] || req.headers.Authorization?.split(' ')[1];

    if(!token){
        res.status(401).json({ message: 'Unauthorized' });
        return;
    }

    try {
        const user = jwt.verify(token , process.env.JWT_SECRET);
        if(!user){
            res.status(401).json({ message: 'Unauthorized' });
            return;
        }
        req.user = user;
        next();
    } catch (error) {
        res.status(401).json({ message: 'Unauthorized' });
    }
}

module.exports = VerifyToken;