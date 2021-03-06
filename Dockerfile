#       Copyright 2017 IBM Corp All Rights Reserved

#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at

#       http://www.apache.org/licenses/LICENSE-2.0

#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

FROM websphere-liberty:javaee7
COPY server.xml /config/server.xml
COPY key.jks /config/resources/security/key.jks
#COPY ltpa.keys /config/resources/security/ltpa.keys
COPY wmq.jmsra.rar /config/wmq.jmsra.rar
COPY messaging-ear/target/messaging-ear-1.0-SNAPSHOT.ear /config/apps/Messaging.ear
RUN installUtility install --acceptLicense defaultServer
