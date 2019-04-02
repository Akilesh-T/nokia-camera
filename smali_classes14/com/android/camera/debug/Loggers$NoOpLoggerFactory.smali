.class Lcom/android/camera/debug/Loggers$NoOpLoggerFactory;
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
    name = "NoOpLoggerFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/debug/Loggers$NoOpLoggerFactory$Singleton;
    }
.end annotation


# instance fields
.field private final mNoOpLogger:Lcom/android/camera/debug/Loggers$NoOpLogger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/android/camera/debug/Loggers$NoOpLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Loggers$NoOpLogger;-><init>(Lcom/android/camera/debug/Loggers$1;)V

    iput-object v0, p0, Lcom/android/camera/debug/Loggers$NoOpLoggerFactory;->mNoOpLogger:Lcom/android/camera/debug/Loggers$NoOpLogger;

    .line 72
    return-void
.end method

.method public static instance()Lcom/android/camera/debug/Loggers$NoOpLoggerFactory;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/android/camera/debug/Loggers$NoOpLoggerFactory$Singleton;->access$000()Lcom/android/camera/debug/Loggers$NoOpLoggerFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;
    .locals 1
    .param p1, "tag"    # Lcom/android/camera/debug/Log$Tag;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/debug/Loggers$NoOpLoggerFactory;->mNoOpLogger:Lcom/android/camera/debug/Loggers$NoOpLogger;

    return-object v0
.end method
