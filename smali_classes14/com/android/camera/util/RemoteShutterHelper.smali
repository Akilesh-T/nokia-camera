.class public Lcom/android/camera/util/RemoteShutterHelper;
.super Ljava/lang/Object;
.source "RemoteShutterHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/camera/remote/RemoteShutterListener;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    new-instance v0, Lcom/android/camera/util/RemoteShutterHelper$1;

    invoke-direct {v0}, Lcom/android/camera/util/RemoteShutterHelper$1;-><init>()V

    return-object v0
.end method
