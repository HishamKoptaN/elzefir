plugins {
    id("com.android.application")
    id("com.google.gms.google-services")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.elzefir.app"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
        applicationId = "com.elzefir.app"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }
    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
    flavorDimensions += "env"
    productFlavors {
        create("local") {
            dimension = "env"
            applicationIdSuffix = ".local"
            versionNameSuffix = "-local"
            resValue("string", "app_name", "ابو جنه للدواجن Local")
        }
        create("dev") {
            dimension = "env"
            applicationIdSuffix = ".dev"
            versionNameSuffix = "-dev"
            resValue("string", "app_name", "ابو جنه للدواجن Dev")
        }
        create("prod") {
            dimension = "env"
            resValue("string", "app_name", "ابو جنه للدواجن")
        }
    }
}

flutter {
    source = "../.."
}
