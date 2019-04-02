.class public Lcom/android/camera/debug/LogHelper;
.super Ljava/lang/Object;
.source "LogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/debug/LogHelper$Singleton;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/android/camera/debug/LogHelper;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/android/camera/debug/LogHelper$Singleton;->access$000()Lcom/android/camera/debug/LogHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getOverrideLevel()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method
