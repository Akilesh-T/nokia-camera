.class Lcom/android/camera/SquareModule$1;
.super Ljava/lang/Object;
.source "SquareModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SquareModule;
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
    .line 201
    iput-object p1, p0, Lcom/android/camera/SquareModule$1;->this$0:Lcom/android/camera/SquareModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/camera/SquareModule$1;->this$0:Lcom/android/camera/SquareModule;

    invoke-virtual {v0}, Lcom/android/camera/SquareModule;->onShutterButtonClick()V

    .line 205
    return-void
.end method
