.class Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;
.super Landroid/os/AsyncTask;
.source "TinyPlanetFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;


# direct methods
.method constructor <init>(Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    .line 153
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$200(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$300(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$400(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$200(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 165
    :goto_0
    return-object v7

    .line 158
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$300(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 159
    .local v1, "width":I
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$300(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 160
    .local v2, "height":I
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$300(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v3, v3, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v3}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$400(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v4, v4, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    .line 161
    invoke-static {v4}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$500(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v5, v5, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v5}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$600(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)F

    move-result v5

    iget-object v6, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v6, v6, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v6}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$700(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)F

    move-result v6

    .line 160
    invoke-static/range {v0 .. v6}, Lcom/android/camera/tinyplanet/TinyPlanetNative;->process(Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;IFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$200(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v1    # "width":I
    .end local v2    # "height":I
    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v3, v3, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v3}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$200(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 150
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$800(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Lcom/android/camera/tinyplanet/TinyPlanetPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v1, v1, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v1}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$400(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v2, v2, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v2}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$200(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/tinyplanet/TinyPlanetPreview;->setBitmap(Landroid/graphics/Bitmap;Ljava/util/concurrent/locks/Lock;)V

    .line 171
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$000(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$002(Lcom/android/camera/tinyplanet/TinyPlanetFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 173
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$100(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$102(Lcom/android/camera/tinyplanet/TinyPlanetFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 175
    iget-object v0, p0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1$1;->this$1:Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;

    iget-object v0, v0, Lcom/android/camera/tinyplanet/TinyPlanetFragment$1;->this$0:Lcom/android/camera/tinyplanet/TinyPlanetFragment;

    invoke-static {v0}, Lcom/android/camera/tinyplanet/TinyPlanetFragment;->access$900(Lcom/android/camera/tinyplanet/TinyPlanetFragment;)V

    .line 177
    :cond_0
    monitor-exit v1

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
