.class Lcom/android/camera/PhotoModule$6;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->init(Lcom/android/camera/CameraActivity;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 625
    iput-object p1, p0, Lcom/android/camera/PhotoModule$6;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/camera/PhotoModule$6;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$2800(Lcom/android/camera/PhotoModule;)V

    .line 629
    return-void
.end method
