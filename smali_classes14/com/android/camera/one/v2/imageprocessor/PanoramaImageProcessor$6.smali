.class Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$6;
.super Ljava/lang/Object;
.source "PanoramaImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$6;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->access$400(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->finish()V

    .line 243
    return-void
.end method
