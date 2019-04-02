.class Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$8;
.super Ljava/lang/Object;
.source "YUVImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;->onPostImage(III[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor$8;->this$0:Lcom/android/camera/one/v2/imageprocessor/YUVImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method
