.class Lcom/android/camera/SlowmotionModule$5;
.super Ljava/lang/Object;
.source "SlowmotionModule.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SlowmotionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SlowmotionModule;


# direct methods
.method constructor <init>(Lcom/android/camera/SlowmotionModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/camera/SlowmotionModule$5;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    .prologue
    .line 569
    return-void
.end method

.method public onStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$5;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v0}, Lcom/android/camera/SlowmotionModule;->access$400(Lcom/android/camera/SlowmotionModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$5;->this$0:Lcom/android/camera/SlowmotionModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/SlowmotionModule;->access$1700(Lcom/android/camera/SlowmotionModule;Z)V

    goto :goto_0
.end method
