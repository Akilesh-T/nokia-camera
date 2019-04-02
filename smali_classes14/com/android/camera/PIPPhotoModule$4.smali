.class Lcom/android/camera/PIPPhotoModule$4;
.super Ljava/lang/Object;
.source "PIPPhotoModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PIPPhotoModule;->init(Lcom/android/camera/CameraActivity;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PIPPhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PIPPhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/camera/PIPPhotoModule$4;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule$4;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v0}, Lcom/android/camera/PIPPhotoModule;->access$800(Lcom/android/camera/PIPPhotoModule;)V

    .line 437
    return-void
.end method
