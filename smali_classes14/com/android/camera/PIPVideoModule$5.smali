.class Lcom/android/camera/PIPVideoModule$5;
.super Ljava/lang/Object;
.source "PIPVideoModule.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PIPVideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PIPVideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PIPVideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/android/camera/PIPVideoModule$5;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$5;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v0}, Lcom/android/camera/PIPVideoModule;->access$1300(Lcom/android/camera/PIPVideoModule;)V

    .line 692
    return-void
.end method

.method public onStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$5;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v0}, Lcom/android/camera/PIPVideoModule;->access$1300(Lcom/android/camera/PIPVideoModule;)V

    .line 682
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$5;->this$0:Lcom/android/camera/PIPVideoModule;

    iget-boolean v0, v0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 687
    :goto_0
    return-void

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$5;->this$0:Lcom/android/camera/PIPVideoModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/PIPVideoModule;->access$1400(Lcom/android/camera/PIPVideoModule;Z)V

    goto :goto_0
.end method
