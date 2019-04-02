.class Lcom/android/camera/ui/BarcodeRotateLayout$4;
.super Ljava/lang/Object;
.source "BarcodeRotateLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/BarcodeRotateLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/BarcodeRotateLayout;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/BarcodeRotateLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/ui/BarcodeRotateLayout;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/camera/ui/BarcodeRotateLayout$4;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/camera/ui/BarcodeRotateLayout$4;->this$0:Lcom/android/camera/ui/BarcodeRotateLayout;

    invoke-virtual {v0}, Lcom/android/camera/ui/BarcodeRotateLayout;->startHideAnimation()V

    .line 446
    return-void
.end method
