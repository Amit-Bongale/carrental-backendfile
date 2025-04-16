const AuthorizedRoles = (...allowedRoles) => {
    return (req, res, next) => {
        userrole = req.user.role
        if ( !allowedRoles.includes(userrole) ) {
            res.status(401).json({message: "Unauthorized"});
            return;
        }
        next();
    }
}

module.exports = AuthorizedRoles;