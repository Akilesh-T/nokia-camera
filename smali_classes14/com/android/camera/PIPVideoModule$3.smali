.class Lcom/android/camera/PIPVideoModule$3;
.super Ljava/lang/Object;
.source "PIPVideoModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PIPVideoModule;->init(Lcom/android/camera/CameraActivity;ZZ)V
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
    .line 522
    iput-object p1, p0, Lcom/android/camera/PIPVideoModule$3;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$3;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v0}, Lcom/android/camera/PIPVideoModule;->access$800(Lcom/android/camera/PIPVideoModule;)V

    .line 526
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$3;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v0}, Lcom/android/camera/PIPVideoModule;->access$900(Lcom/android/camera/PIPVideoModule;)V

    .line 527
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule$3;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-static {v0}, Lcom/android/camera/PIPVideoModule;->access$1000(Lcom/android/camera/PIPVideoModule;)Z

    .line 528
    return-void
.end method
