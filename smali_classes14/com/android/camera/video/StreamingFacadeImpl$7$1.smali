.class Lcom/android/camera/video/StreamingFacadeImpl$7$1;
.super Ljava/lang/Object;
.source "StreamingFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/StreamingFacadeImpl$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/video/StreamingFacadeImpl$7;


# direct methods
.method constructor <init>(Lcom/android/camera/video/StreamingFacadeImpl$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/video/StreamingFacadeImpl$7;

    .prologue
    .line 823
    iput-object p1, p0, Lcom/android/camera/video/StreamingFacadeImpl$7$1;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$7$1;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$7;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$7;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/StreamingFacadeImpl;->access$2000(Lcom/android/camera/video/StreamingFacadeImpl;)V

    .line 827
    return-void
.end method
