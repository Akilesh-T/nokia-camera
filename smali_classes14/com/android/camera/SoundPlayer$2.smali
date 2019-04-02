.class Lcom/android/camera/SoundPlayer$2;
.super Ljava/lang/Object;
.source "SoundPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SoundPlayer;->play(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SoundPlayer;

.field final synthetic val$soundId:Ljava/lang/Integer;

.field final synthetic val$volume:F


# direct methods
.method constructor <init>(Lcom/android/camera/SoundPlayer;Ljava/lang/Integer;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SoundPlayer;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/camera/SoundPlayer$2;->this$0:Lcom/android/camera/SoundPlayer;

    iput-object p2, p0, Lcom/android/camera/SoundPlayer$2;->val$soundId:Ljava/lang/Integer;

    iput p3, p0, Lcom/android/camera/SoundPlayer$2;->val$volume:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 90
    iget-object v0, p0, Lcom/android/camera/SoundPlayer$2;->this$0:Lcom/android/camera/SoundPlayer;

    invoke-static {v0}, Lcom/android/camera/SoundPlayer;->access$200(Lcom/android/camera/SoundPlayer;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/SoundPlayer$2;->val$soundId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 91
    iget-object v0, p0, Lcom/android/camera/SoundPlayer$2;->this$0:Lcom/android/camera/SoundPlayer;

    invoke-static {v0}, Lcom/android/camera/SoundPlayer;->access$300(Lcom/android/camera/SoundPlayer;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/SoundPlayer$2;->val$soundId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/android/camera/SoundPlayer$2;->val$volume:F

    iget v3, p0, Lcom/android/camera/SoundPlayer$2;->val$volume:F

    const/high16 v6, 0x3f800000    # 1.0f

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 92
    return-void
.end method
