.class Lcom/android/camera/SquareModule$20;
.super Ljava/lang/Object;
.source "SquareModule.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SquareModule;->getBeautyButtonCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
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
    .line 1948
    iput-object p1, p0, Lcom/android/camera/SquareModule$20;->this$0:Lcom/android/camera/SquareModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/android/camera/SquareModule$20;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$700(Lcom/android/camera/SquareModule;)V

    .line 1957
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1951
    iget-object v0, p0, Lcom/android/camera/SquareModule$20;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0, p1}, Lcom/android/camera/SquareModule;->access$4300(Lcom/android/camera/SquareModule;I)V

    .line 1952
    return-void
.end method
