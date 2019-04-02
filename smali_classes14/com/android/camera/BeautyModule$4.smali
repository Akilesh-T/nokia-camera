.class Lcom/android/camera/BeautyModule$4;
.super Ljava/lang/Object;
.source "BeautyModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BeautyModule;->init(Lcom/android/camera/CameraActivity;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BeautyModule;


# direct methods
.method constructor <init>(Lcom/android/camera/BeautyModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/camera/BeautyModule$4;->this$0:Lcom/android/camera/BeautyModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/camera/BeautyModule$4;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$1000(Lcom/android/camera/BeautyModule;)V

    .line 407
    return-void
.end method
