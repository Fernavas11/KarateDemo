import org.codehaus.groovy.tools.shell.util.Logger.io

plugins {
    id("java")
}

repositories {
    mavenCentral()
}

dependencies {

    testImplementation(platform("org.junit:junit-bom:5.9.1"))
    testImplementation("org.junit.jupiter:junit-jupiter")
    testImplementation ("com.intuit.karate:karate-junit5:1.2.0.RC4")
}


tasks.test {
    useJUnitPlatform()
}


sourceSets{
    test{
        resources{
            srcDir("src/test/java")
            exclude("**/*.java")
        }
    }
}