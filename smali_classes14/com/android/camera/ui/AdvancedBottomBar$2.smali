.class Lcom/android/camera/ui/AdvancedBottomBar$2;
.super Ljava/lang/Object;
.source "AdvancedBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/AdvancedBottomBar;->setShutterButtonEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/AdvancedBottomBar;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/camera/ui/AdvancedBottomBar;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/AdvancedBottomBar;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/camera/ui/AdvancedBottomBar$2;->this$0:Lcom/android/camera/ui/AdvancedBottomBar;

    iput-boolean p2, p0, Lcom/android/camera/ui/AdvancedBottomBar$2;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar$2;->this$0:Lcom/android/camera/ui/AdvancedBottomBar;

    invoke-static {v0}, Lcom/android/camera/ui/AdvancedBottomBar;->access$000(Lcom/android/camera/ui/AdvancedBottomBar;)Lcom/android/camera/ShutterButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/ui/AdvancedBottomBar$2;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setClickable(Z)V

    .line 347
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar$2;->this$0:Lcom/android/camera/ui/AdvancedBottomBar;

    invoke-static {v0}, Lcom/android/camera/ui/AdvancedBottomBar;->access$000(Lcom/android/camera/ui/AdvancedBottomBar;)Lcom/android/camera/ShutterButton;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/camera/ui/AdvancedBottomBar$2;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ShutterButton;->setEnabled(Z)V

    .line 348
    iget-object v0, p0, Lcom/android/camera/ui/AdvancedBottomBar$2;->this$0:Lcom/android/camera/ui/AdvancedBottomBar;

    iget-boolean v1, p0, Lcom/android/camera/ui/AdvancedBottomBar$2;->val$enabled:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AdvancedBottomBar;->setShutterButtonImportantToA11y(Z)V

    .line 349
    return-void
.end method
