.class Lcom/android/camera/BokehModule$7;
.super Ljava/lang/Object;
.source "BokehModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/BokehModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehModule;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/android/camera/BokehModule$7;->this$0:Lcom/android/camera/BokehModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/camera/BokehModule$7;->this$0:Lcom/android/camera/BokehModule;

    invoke-virtual {v0}, Lcom/android/camera/BokehModule;->onCaptureCancelled()V

    .line 703
    return-void
.end method
