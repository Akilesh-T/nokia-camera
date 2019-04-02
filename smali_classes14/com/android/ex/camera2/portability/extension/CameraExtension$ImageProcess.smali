.class public abstract Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;
.super Ljava/lang/Object;
.source "CameraExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/extension/CameraExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "ImageProcess"
.end annotation


# instance fields
.field protected final mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

.field protected final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/ex/camera2/portability/extension/CameraExtension;


# direct methods
.method public constructor <init>(Lcom/android/ex/camera2/portability/extension/CameraExtension;Lcom/android/ex/camera2/portability/extension/CameraExtension;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/ex/camera2/portability/extension/CameraExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cameraExtension"    # Lcom/android/ex/camera2/portability/extension/CameraExtension;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;->this$0:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;->mCameraExtension:Lcom/android/ex/camera2/portability/extension/CameraExtension;

    .line 43
    iput-object p3, p0, Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method


# virtual methods
.method public abstract abort()V
.end method

.method public abstract finish()V
.end method

.method public abstract run()V
.end method
