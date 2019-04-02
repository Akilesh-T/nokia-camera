.class public Lcom/android/camera/debug/Loggers;
.super Ljava/lang/Object;
.source "Loggers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/debug/Loggers$TagLogger;,
        Lcom/android/camera/debug/Loggers$NoOpLogger;,
        Lcom/android/camera/debug/Loggers$TagLoggerFactory;,
        Lcom/android/camera/debug/Loggers$NoOpLoggerFactory;
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static factoryFor(Lcom/android/camera/debug/Logger;)Lcom/android/camera/debug/Logger$Factory;
    .locals 1
    .param p0, "logger"    # Lcom/android/camera/debug/Logger;

    .prologue
    .line 48
    new-instance v0, Lcom/android/camera/debug/Loggers$1;

    invoke-direct {v0, p0}, Lcom/android/camera/debug/Loggers$1;-><init>(Lcom/android/camera/debug/Logger;)V

    return-object v0
.end method

.method public static noOpFactory()Lcom/android/camera/debug/Logger$Factory;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/android/camera/debug/Loggers$NoOpLoggerFactory;->instance()Lcom/android/camera/debug/Loggers$NoOpLoggerFactory;

    move-result-object v0

    return-object v0
.end method

.method public static tagFactory()Lcom/android/camera/debug/Logger$Factory;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/android/camera/debug/Loggers$TagLoggerFactory;->instance()Lcom/android/camera/debug/Loggers$TagLoggerFactory;

    move-result-object v0

    return-object v0
.end method
