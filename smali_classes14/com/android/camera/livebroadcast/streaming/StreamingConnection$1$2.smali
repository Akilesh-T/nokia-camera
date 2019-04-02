.class Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1$2;
.super Ljava/lang/Object;
.source "StreamingConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;->process()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1$2;->this$1:Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;

    iput p2, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1$2;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1$2;->this$1:Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->access$100(Lcom/android/camera/livebroadcast/streaming/StreamingConnection;)Lcom/android/camera/livebroadcast/streaming/StreamingConnection$LivingStartListener;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1$2;->val$result:I

    invoke-interface {v0, v1}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$LivingStartListener;->startError(I)V

    .line 163
    return-void
.end method
