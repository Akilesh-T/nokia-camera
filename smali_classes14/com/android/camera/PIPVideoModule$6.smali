.class Lcom/android/camera/PIPVideoModule$6;
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
    .line 696
    iput-object p1, p0, Lcom/android/camera/PIPVideoModule$6;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$6;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v0}, Lcom/android/camera/PIPVideoModule;->access$1300(Lcom/android/camera/PIPVideoModule;)V

    .line 711
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$6;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v0}, Lcom/android/camera/PIPVideoModule;->access$1300(Lcom/android/camera/PIPVideoModule;)V

    .line 700
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$6;->this$0:Lcom/android/camera/PIPVideoModule;

    iget-boolean v0, v0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$6;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v0}, Lcom/android/camera/PIPVideoModule;->access$1500(Lcom/android/camera/PIPVideoModule;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$6;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v0}, Lcom/android/camera/PIPVideoModule;->access$1600(Lcom/android/camera/PIPVideoModule;)V

    goto :goto_0
.end method
