.class Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager$1;
.super Ljava/lang/Object;
.source "MicrophoneManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager$1;->this$0:Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 91
    :goto_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager$1;->this$0:Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->access$000(Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager$1;->this$0:Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->access$100(Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;)Lcom/pedro/encoder/audio/DataTaken;

    move-result-object v0

    .line 93
    .local v0, "dataTaken":Lcom/pedro/encoder/audio/DataTaken;
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager$1;->this$0:Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->access$200(Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;)Lcom/pedro/encoder/input/audio/GetMicrophoneData;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pedro/encoder/audio/DataTaken;->getPcmBuffer()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/pedro/encoder/audio/DataTaken;->getSize()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/pedro/encoder/input/audio/GetMicrophoneData;->inputPCMData([BI)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager$1;->this$0:Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;->access$002(Lcom/android/camera/livebroadcast/v2/audio/MicrophoneManager;Z)Z

    goto :goto_0

    .line 99
    .end local v0    # "dataTaken":Lcom/pedro/encoder/audio/DataTaken;
    :cond_1
    return-void
.end method
