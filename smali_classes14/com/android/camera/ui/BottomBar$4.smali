.class Lcom/android/camera/ui/BottomBar$4;
.super Ljava/lang/Object;
.source "BottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/BottomBar;->setShutterButtonEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/BottomBar;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ui/BottomBar;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/BottomBar;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/camera/ui/BottomBar$4;->this$0:Lcom/android/camera/ui/BottomBar;

    iput-boolean p2, p0, Lcom/android/camera/ui/BottomBar$4;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar$4;->this$0:Lcom/android/camera/ui/BottomBar;

    invoke-static {v0}, Lcom/android/camera/ui/BottomBar;->access$500(Lcom/android/camera/ui/BottomBar;)Lcom/android/camera/ShutterButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/ui/BottomBar$4;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 431
    iget-object v0, p0, Lcom/android/camera/ui/BottomBar$4;->this$0:Lcom/android/camera/ui/BottomBar;

    iget-boolean v1, p0, Lcom/android/camera/ui/BottomBar$4;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BottomBar;->setShutterButtonImportantToA11y(Z)V

    .line 432
    return-void
.end method
