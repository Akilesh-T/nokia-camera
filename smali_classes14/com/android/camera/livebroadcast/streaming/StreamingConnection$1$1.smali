.class Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1$1;
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


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1$1;->this$1:Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1$1;->this$1:Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->access$100(Lcom/android/camera/livebroadcast/streaming/StreamingConnection;)Lcom/android/camera/livebroadcast/streaming/StreamingConnection$LivingStartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$LivingStartListener;->startSuccess()V

    .line 152
    return-void
.end method
