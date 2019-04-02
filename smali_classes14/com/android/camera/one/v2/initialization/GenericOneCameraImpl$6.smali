.class Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$6;
.super Ljava/lang/Object;
.source "GenericOneCameraImpl.java"

# interfaces
.implements Lcom/android/camera/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;->setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/util/Callback",
        "<[",
        "Landroid/hardware/camera2/params/Face;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

.field final synthetic val$listener:Lcom/android/camera/one/OneCamera$FaceDetectionListener;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$6;->this$0:Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl;

    iput-object p2, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$6;->val$listener:Lcom/android/camera/one/OneCamera$FaceDetectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 268
    check-cast p1, [Landroid/hardware/camera2/params/Face;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$6;->onCallback([Landroid/hardware/camera2/params/Face;)V

    return-void
.end method

.method public onCallback([Landroid/hardware/camera2/params/Face;)V
    .locals 1
    .param p1, "faceData"    # [Landroid/hardware/camera2/params/Face;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/camera/one/v2/initialization/GenericOneCameraImpl$6;->val$listener:Lcom/android/camera/one/OneCamera$FaceDetectionListener;

    invoke-interface {v0, p1}, Lcom/android/camera/one/OneCamera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/camera2/params/Face;)V

    .line 272
    return-void
.end method
