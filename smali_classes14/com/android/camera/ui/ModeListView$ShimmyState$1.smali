.class Lcom/android/camera/ui/ModeListView$ShimmyState$1;
.super Ljava/lang/Object;
.source "ModeListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ModeListView$ShimmyState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/ModeListView$ShimmyState;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModeListView$ShimmyState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ui/ModeListView$ShimmyState;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/camera/ui/ModeListView$ShimmyState$1;->this$1:Lcom/android/camera/ui/ModeListView$ShimmyState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/camera/ui/ModeListView$ShimmyState$1;->this$1:Lcom/android/camera/ui/ModeListView$ShimmyState;

    invoke-static {v0}, Lcom/android/camera/ui/ModeListView$ShimmyState;->access$1400(Lcom/android/camera/ui/ModeListView$ShimmyState;)V

    .line 378
    return-void
.end method
