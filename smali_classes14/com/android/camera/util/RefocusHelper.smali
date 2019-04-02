.class public Lcom/android/camera/util/RefocusHelper;
.super Ljava/lang/Object;
.source "RefocusHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRefocusModule(Lcom/android/camera/app/AppController;)Lcom/android/camera/CameraModule;
    .locals 1
    .param p0, "app"    # Lcom/android/camera/app/AppController;

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasRefocusCapture(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public static isRGBZ(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method
