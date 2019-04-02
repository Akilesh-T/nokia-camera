.class Lcom/android/camera/BokehModule$ShutterCallback$1;
.super Ljava/lang/Object;
.source "BokehModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehModule$ShutterCallback;->onShutter(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/BokehModule$ShutterCallback;

.field final synthetic val$stream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehModule$ShutterCallback;Ljava/io/ByteArrayOutputStream;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/BokehModule$ShutterCallback;

    .prologue
    .line 947
    iput-object p1, p0, Lcom/android/camera/BokehModule$ShutterCallback$1;->this$1:Lcom/android/camera/BokehModule$ShutterCallback;

    iput-object p2, p0, Lcom/android/camera/BokehModule$ShutterCallback$1;->val$stream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1f4

    .line 952
    :try_start_0
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v4, "bokeh wait shutter callback start"

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 953
    iget-object v1, p0, Lcom/android/camera/BokehModule$ShutterCallback$1;->this$1:Lcom/android/camera/BokehModule$ShutterCallback;

    iget-object v1, v1, Lcom/android/camera/BokehModule$ShutterCallback;->this$0:Lcom/android/camera/BokehModule;

    iget-wide v4, v1, Lcom/android/camera/BokehModule;->mShutterLag:J

    sub-long v2, v6, v4

    .line 954
    .local v2, "timeout":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    cmp-long v1, v2, v6

    if-gez v1, :cond_0

    .line 955
    iget-object v1, p0, Lcom/android/camera/BokehModule$ShutterCallback$1;->this$1:Lcom/android/camera/BokehModule$ShutterCallback;

    iget-object v1, v1, Lcom/android/camera/BokehModule$ShutterCallback;->memento:Lcom/android/camera/BokehModule$Memento;

    invoke-static {v1}, Lcom/android/camera/BokehModule$Memento;->access$2700(Lcom/android/camera/BokehModule$Memento;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    const-wide/16 v4, 0x1f4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, Lcom/google/common/util/concurrent/SettableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 957
    :cond_0
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bokeh wait shutter callback end timeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 958
    iget-object v1, p0, Lcom/android/camera/BokehModule$ShutterCallback$1;->this$1:Lcom/android/camera/BokehModule$ShutterCallback;

    iget-object v4, p0, Lcom/android/camera/BokehModule$ShutterCallback$1;->val$stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/camera/BokehModule$ShutterCallback;->savePreviewData([B)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    .line 968
    .end local v2    # "timeout":J
    :goto_0
    return-void

    .line 959
    :catch_0
    move-exception v0

    .line 960
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 961
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 962
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    iget-object v1, p0, Lcom/android/camera/BokehModule$ShutterCallback$1;->this$1:Lcom/android/camera/BokehModule$ShutterCallback;

    iget-object v4, p0, Lcom/android/camera/BokehModule$ShutterCallback$1;->val$stream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/camera/BokehModule$ShutterCallback;->savePreviewData([B)V

    .line 963
    iget-object v1, p0, Lcom/android/camera/BokehModule$ShutterCallback$1;->this$1:Lcom/android/camera/BokehModule$ShutterCallback;

    iget-object v1, v1, Lcom/android/camera/BokehModule$ShutterCallback;->memento:Lcom/android/camera/BokehModule$Memento;

    invoke-static {v1}, Lcom/android/camera/BokehModule$Memento;->access$2700(Lcom/android/camera/BokehModule$Memento;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 964
    invoke-static {}, Lcom/android/camera/BokehModule;->access$300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    const-string v4, " bokeh wait shutter callback timeout"

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 965
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_2
    move-exception v0

    .line 966
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_0
.end method
