.class Lcom/android/camera/SlowmotionModule$9$1;
.super Ljava/lang/Object;
.source "SlowmotionModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SlowmotionModule$9;->onStorageUpdateDone(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/SlowmotionModule$9;


# direct methods
.method constructor <init>(Lcom/android/camera/SlowmotionModule$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/SlowmotionModule$9;

    .prologue
    .line 1564
    iput-object p1, p0, Lcom/android/camera/SlowmotionModule$9$1;->this$1:Lcom/android/camera/SlowmotionModule$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule$9$1;->this$1:Lcom/android/camera/SlowmotionModule$9;

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule$9;->this$0:Lcom/android/camera/SlowmotionModule;

    invoke-static {v0}, Lcom/android/camera/SlowmotionModule;->access$3200(Lcom/android/camera/SlowmotionModule;)V

    .line 1568
    return-void
.end method
