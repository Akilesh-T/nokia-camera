.class Lcom/android/camera/SoundPlayer$1;
.super Ljava/lang/Object;
.source "SoundPlayer.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SoundPlayer;


# direct methods
.method constructor <init>(Lcom/android/camera/SoundPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SoundPlayer;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/camera/SoundPlayer$1;->this$0:Lcom/android/camera/SoundPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 4
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    .line 57
    invoke-static {}, Lcom/android/camera/SoundPlayer;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadComplete : soundId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/android/camera/SoundPlayer$1;->this$0:Lcom/android/camera/SoundPlayer;

    invoke-static {v1}, Lcom/android/camera/SoundPlayer;->access$100(Lcom/android/camera/SoundPlayer;)Ljava/util/List;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 59
    iget-object v1, p0, Lcom/android/camera/SoundPlayer$1;->this$0:Lcom/android/camera/SoundPlayer;

    invoke-static {v1}, Lcom/android/camera/SoundPlayer;->access$200(Lcom/android/camera/SoundPlayer;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 60
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 63
    :cond_0
    return-void
.end method
