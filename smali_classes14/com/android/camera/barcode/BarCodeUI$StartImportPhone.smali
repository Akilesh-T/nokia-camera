.class Lcom/android/camera/barcode/BarCodeUI$StartImportPhone;
.super Ljava/lang/Thread;
.source "BarCodeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/barcode/BarCodeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartImportPhone"
.end annotation


# instance fields
.field private phoneNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/barcode/BarCodeUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/barcode/BarCodeUI;Ljava/lang/String;)V
    .locals 0
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/camera/barcode/BarCodeUI$StartImportPhone;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 494
    iput-object p2, p0, Lcom/android/camera/barcode/BarCodeUI$StartImportPhone;->phoneNumber:Ljava/lang/String;

    .line 495
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 499
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 500
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeUI$StartImportPhone;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/barcode/BarCodeUI;->access$1102(Lcom/android/camera/barcode/BarCodeUI;Z)Z

    .line 501
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeUI$StartImportPhone;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    iget-object v1, p0, Lcom/android/camera/barcode/BarCodeUI$StartImportPhone;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/barcode/BarCodeUI;->access$1200(Lcom/android/camera/barcode/BarCodeUI;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeUI$StartImportPhone;->this$0:Lcom/android/camera/barcode/BarCodeUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/barcode/BarCodeUI;->access$1102(Lcom/android/camera/barcode/BarCodeUI;Z)Z

    .line 503
    return-void
.end method
