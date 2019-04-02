.class Lcom/android/camera/debug/Loggers$TagLoggerFactory;
.super Ljava/lang/Object;
.source "Loggers.java"

# interfaces
.implements Lcom/android/camera/debug/Logger$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/debug/Loggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagLoggerFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/debug/Loggers$TagLoggerFactory$Singleton;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/debug/Loggers$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/debug/Loggers$1;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/camera/debug/Loggers$TagLoggerFactory;-><init>()V

    return-void
.end method

.method public static instance()Lcom/android/camera/debug/Loggers$TagLoggerFactory;
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/android/camera/debug/Loggers$TagLoggerFactory$Singleton;->access$300()Lcom/android/camera/debug/Loggers$TagLoggerFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;
    .locals 1
    .param p1, "tag"    # Lcom/android/camera/debug/Log$Tag;

    .prologue
    .line 95
    new-instance v0, Lcom/android/camera/debug/Loggers$TagLogger;

    invoke-direct {v0, p1}, Lcom/android/camera/debug/Loggers$TagLogger;-><init>(Lcom/android/camera/debug/Log$Tag;)V

    return-object v0
.end method
