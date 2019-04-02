.class Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequestExtension$1;
.super Ljava/lang/Object;
.source "MTKCaptureRequestExtension.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequestExtension;->appendParamForPreview(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/v2/core/RequestTemplate;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCameraCaptureSetting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequestExtension;

.field final synthetic val$bokehSettingValue:Lcom/android/camera/one/v2/common/BokehSettingValue;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequestExtension;Lcom/android/camera/one/v2/common/BokehSettingValue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequestExtension;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequestExtension$1;->this$0:Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequestExtension;

    iput-object p2, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequestExtension$1;->val$bokehSettingValue:Lcom/android/camera/one/v2/common/BokehSettingValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequestExtension$1;->get()[I

    move-result-object v0

    return-object v0
.end method

.method public get()[I
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/extension/mtk/MTKCaptureRequestExtension$1;->val$bokehSettingValue:Lcom/android/camera/one/v2/common/BokehSettingValue;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/common/BokehSettingValue;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method
