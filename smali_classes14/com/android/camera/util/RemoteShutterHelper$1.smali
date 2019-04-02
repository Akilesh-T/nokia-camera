.class final Lcom/android/camera/util/RemoteShutterHelper$1;
.super Ljava/lang/Object;
.source "RemoteShutterHelper.java"

# interfaces
.implements Lcom/android/camera/remote/RemoteShutterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/util/RemoteShutterHelper;->create(Landroid/content/Context;)Lcom/android/camera/remote/RemoteShutterListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModuleExit()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public onModuleReady(Lcom/android/camera/remote/RemoteCameraModule;)V
    .locals 0
    .param p1, "module"    # Lcom/android/camera/remote/RemoteCameraModule;

    .prologue
    .line 33
    return-void
.end method

.method public onPictureTaken([B)V
    .locals 0
    .param p1, "photoData"    # [B

    .prologue
    .line 29
    return-void
.end method
