.class Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3$2;
.super Ljava/lang/Object;
.source "AndroidCamera2AgentImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;->onImageAvailable(Landroid/media/ImageReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;

.field final synthetic val$pixels:[B


# direct methods
.method constructor <init>(Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;[B)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3$2;->this$2:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;

    iput-object p2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3$2;->val$pixels:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3$2;->this$2:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;

    iget-object v0, v0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;->val$jpeg:Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    iget-object v1, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3$2;->val$pixels:[B

    iget-object v2, p0, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3$2;->this$2:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;

    iget-object v2, v2, Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl$3;->this$1:Lcom/android/ex/camera2/portability/AndroidCamera2AgentImpl$AndroidCamera2ProxyImpl;

    invoke-interface {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;->onPictureTaken([BLcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V

    .line 1168
    return-void
.end method
