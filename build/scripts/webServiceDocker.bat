@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  webServiceDocker startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and WEB_SERVICE_DOCKER_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS="-Dfile.encoding=UTF-8"

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\hw-docker-1.0.jar;%APP_HOME%\lib\spring-boot-starter-data-jpa-1.4.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-jersey-1.4.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-web-1.4.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-mail-1.4.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-freemarker-1.4.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-1.4.2.RELEASE.jar;%APP_HOME%\lib\guava-17.0.jar;%APP_HOME%\lib\mysql-connector-java-5.1.38.jar;%APP_HOME%\lib\hibernate-ehcache-5.0.0.Final.jar;%APP_HOME%\lib\commons-fileupload-1.2.1.jar;%APP_HOME%\lib\commons-io-2.4.jar;%APP_HOME%\lib\commons-lang3-3.1.jar;%APP_HOME%\lib\itextpdf-5.2.0.jar;%APP_HOME%\lib\itext-asian-5.2.0.jar;%APP_HOME%\lib\httpclient-4.3.5.jar;%APP_HOME%\lib\json-20090211.jar;%APP_HOME%\lib\push-1.2.jar;%APP_HOME%\lib\lombok-1.14.8.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-1.4.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-aop-1.4.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-jdbc-1.4.2.RELEASE.jar;%APP_HOME%\lib\hibernate-core-5.0.11.Final.jar;%APP_HOME%\lib\hibernate-entitymanager-5.0.11.Final.jar;%APP_HOME%\lib\javax.transaction-api-1.2.jar;%APP_HOME%\lib\spring-data-jpa-1.10.5.RELEASE.jar;%APP_HOME%\lib\spring-aspects-4.3.4.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-validation-1.4.2.RELEASE.jar;%APP_HOME%\lib\jackson-databind-2.8.4.jar;%APP_HOME%\lib\spring-web-4.3.4.RELEASE.jar;%APP_HOME%\lib\jersey-server-2.23.2.jar;%APP_HOME%\lib\jersey-container-servlet-core-2.23.2.jar;%APP_HOME%\lib\jersey-container-servlet-2.23.2.jar;%APP_HOME%\lib\jersey-bean-validation-2.23.2.jar;%APP_HOME%\lib\jersey-spring3-2.23.2.jar;%APP_HOME%\lib\jersey-media-json-jackson-2.23.2.jar;%APP_HOME%\lib\hibernate-validator-5.2.4.Final.jar;%APP_HOME%\lib\spring-webmvc-4.3.4.RELEASE.jar;%APP_HOME%\lib\spring-context-4.3.4.RELEASE.jar;%APP_HOME%\lib\spring-context-support-4.3.4.RELEASE.jar;%APP_HOME%\lib\javax.mail-1.5.6.jar;%APP_HOME%\lib\freemarker-2.3.25-incubating.jar;%APP_HOME%\lib\spring-boot-1.4.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-autoconfigure-1.4.2.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-logging-1.4.2.RELEASE.jar;%APP_HOME%\lib\spring-core-4.3.4.RELEASE.jar;%APP_HOME%\lib\snakeyaml-1.17.jar;%APP_HOME%\lib\jboss-logging-3.3.0.Final.jar;%APP_HOME%\lib\ehcache-core-2.4.3.jar;%APP_HOME%\lib\httpcore-4.4.5.jar;%APP_HOME%\lib\commons-codec-1.10.jar;%APP_HOME%\lib\tomcat-embed-core-8.5.6.jar;%APP_HOME%\lib\tomcat-embed-el-8.5.6.jar;%APP_HOME%\lib\tomcat-embed-websocket-8.5.6.jar;%APP_HOME%\lib\spring-aop-4.3.4.RELEASE.jar;%APP_HOME%\lib\aspectjweaver-1.8.9.jar;%APP_HOME%\lib\tomcat-jdbc-8.5.6.jar;%APP_HOME%\lib\spring-jdbc-4.3.4.RELEASE.jar;%APP_HOME%\lib\hibernate-jpa-2.1-api-1.0.0.Final.jar;%APP_HOME%\lib\javassist-3.20.0-GA.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\jandex-2.0.0.Final.jar;%APP_HOME%\lib\dom4j-1.6.1.jar;%APP_HOME%\lib\hibernate-commons-annotations-5.0.1.Final.jar;%APP_HOME%\lib\spring-data-commons-1.12.5.RELEASE.jar;%APP_HOME%\lib\spring-orm-4.3.4.RELEASE.jar;%APP_HOME%\lib\spring-tx-4.3.4.RELEASE.jar;%APP_HOME%\lib\spring-beans-4.3.4.RELEASE.jar;%APP_HOME%\lib\slf4j-api-1.7.21.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.21.jar;%APP_HOME%\lib\jackson-annotations-2.8.4.jar;%APP_HOME%\lib\jackson-core-2.8.4.jar;%APP_HOME%\lib\jersey-common-2.23.2.jar;%APP_HOME%\lib\jersey-client-2.23.2.jar;%APP_HOME%\lib\javax.ws.rs-api-2.0.1.jar;%APP_HOME%\lib\jersey-media-jaxb-2.23.2.jar;%APP_HOME%\lib\javax.annotation-api-1.2.jar;%APP_HOME%\lib\hk2-api-2.5.0-b05.jar;%APP_HOME%\lib\javax.inject-2.5.0-b05.jar;%APP_HOME%\lib\hk2-locator-2.5.0-b05.jar;%APP_HOME%\lib\validation-api-1.1.0.Final.jar;%APP_HOME%\lib\hk2-2.5.0-b05.jar;%APP_HOME%\lib\spring-bridge-2.5.0-b05.jar;%APP_HOME%\lib\jersey-entity-filtering-2.23.2.jar;%APP_HOME%\lib\jackson-jaxrs-base-2.8.4.jar;%APP_HOME%\lib\jackson-jaxrs-json-provider-2.8.4.jar;%APP_HOME%\lib\classmate-1.3.3.jar;%APP_HOME%\lib\spring-expression-4.3.4.RELEASE.jar;%APP_HOME%\lib\activation-1.1.jar;%APP_HOME%\lib\logback-classic-1.1.7.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.21.jar;%APP_HOME%\lib\log4j-over-slf4j-1.7.21.jar;%APP_HOME%\lib\tomcat-juli-8.5.6.jar;%APP_HOME%\lib\xml-apis-1.4.01.jar;%APP_HOME%\lib\jersey-guava-2.23.2.jar;%APP_HOME%\lib\osgi-resource-locator-1.0.1.jar;%APP_HOME%\lib\hk2-utils-2.5.0-b05.jar;%APP_HOME%\lib\aopalliance-repackaged-2.5.0-b05.jar;%APP_HOME%\lib\config-types-2.5.0-b05.jar;%APP_HOME%\lib\hk2-core-2.5.0-b05.jar;%APP_HOME%\lib\hk2-config-2.5.0-b05.jar;%APP_HOME%\lib\hk2-runlevel-2.5.0-b05.jar;%APP_HOME%\lib\class-model-2.5.0-b05.jar;%APP_HOME%\lib\jackson-module-jaxb-annotations-2.8.4.jar;%APP_HOME%\lib\logback-core-1.1.7.jar;%APP_HOME%\lib\asm-all-repackaged-2.5.0-b05.jar

@rem Execute webServiceDocker
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %WEB_SERVICE_DOCKER_OPTS%  -classpath "%CLASSPATH%" com.slfinance.work.EducationApplication %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable WEB_SERVICE_DOCKER_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%WEB_SERVICE_DOCKER_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
