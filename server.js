/**
 * JBoss, Home of Professional Open Source
 * Copyright Red Hat, Inc., and individual contributors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

var vertx = require('vertx');
var container = require('vertx/container');
var console = require('vertx/console');

var config = {
    'web_root': 'webroot',
    'port': parseInt(container.env['OPENSHIFT_VERTX_PORT'] || 8080)

};
container.deployModule('io.vertx~mod-web-server~2.0.0-final', config);

console.log("Listening on port: " + config.port);