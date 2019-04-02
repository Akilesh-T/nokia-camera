.class Lcom/android/camera/SquareModule$12;
.super Ljava/lang/Object;
.source "SquareModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SquareModule;->reopenCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SquareModule;


# direct methods
.method constructor <init>(Lcom/android/camera/SquareModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/android/camera/SquareModule$12;->this$0:Lcom/android/camera/SquareModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/android/camera/SquareModule$12;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$1400(Lcom/android/camera/SquareModule;)V

    .line 1232
    iget-object v0, p0, Lcom/android/camera/SquareModule$12;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$1800(Lcom/android/camera/SquareModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/android/camera/SquareModule$12;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$3500(Lcom/android/camera/SquareModule;)V

    .line 1235
    :cond_0
    return-void
.end method
