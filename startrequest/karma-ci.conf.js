module.exports = function(config) {
    "use strict";
    require("./karma.conf")(config);
    config.set({
        preprocessors: {
            "{webapp,webapp/!(test)}/!(mock*).js": ["coverage"]
        },
        coverageReporter: {
            includeAllSources: true,
            reporters: [
                {
                    type: "html",
                    dir: "coverage"
                },
                {
                    type: "text"
                }
            ],
            check: {
                each: {
                    statements: 50,
                    branches: 50,
                    functions: 50,
                    lines: 50
                }
            }
        },
        reporters: ["progress", "coverage"],
        browsers: ["ChromeHeadless"],
        singleRun: true
    });
};