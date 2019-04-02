.class Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$2;
.super Ljava/lang/Object;
.source "DualSightImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$2;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$2;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$300(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->start()V

    .line 150
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$2;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$400(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onProcessStart()V

    .line 151
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$2;->this$0:Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    const-string v1, "ImageEngine.start"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 152
    return-void
.end method
