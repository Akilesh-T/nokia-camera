.class Lcom/android/camera/ManualHal3Module$8;
.super Ljava/lang/Object;
.source "ManualHal3Module.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualHal3Module;->init(Lcom/android/camera/CameraActivity;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ManualHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/camera/ManualHal3Module$8;->this$0:Lcom/android/camera/ManualHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module$8;->this$0:Lcom/android/camera/ManualHal3Module;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/ManualHal3Module;->access$3300(Lcom/android/camera/ManualHal3Module;Z)V

    .line 642
    return-void
.end method
