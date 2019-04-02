.class Lcom/android/camera/ManualModule$5;
.super Ljava/lang/Object;
.source "ManualModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualModule;->init(Lcom/android/camera/CameraActivity;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualModule;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/camera/ManualModule$5;->this$0:Lcom/android/camera/ManualModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/camera/ManualModule$5;->this$0:Lcom/android/camera/ManualModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ManualModule;->access$1500(Lcom/android/camera/ManualModule;Z)V

    .line 465
    return-void
.end method
