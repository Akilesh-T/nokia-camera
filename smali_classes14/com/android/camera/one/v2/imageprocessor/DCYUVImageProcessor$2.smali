.class Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$2;
.super Ljava/lang/Object;
.source "DCYUVImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$2;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$2;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->access$300(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->start()V

    .line 140
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$2;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->access$400(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onProcessStart()V

    .line 141
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$2;->this$0:Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    const-string v1, "ImageEngine.start"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 142
    return-void
.end method
