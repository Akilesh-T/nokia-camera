.class Lcom/android/camera/barcode/BarCodeDialog$StartImportPhone;
.super Ljava/lang/Thread;
.source "BarCodeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/barcode/BarCodeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartImportPhone"
.end annotation


# instance fields
.field private phoneNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/barcode/BarCodeDialog;


# direct methods
.method public constructor <init>(Lcom/android/camera/barcode/BarCodeDialog;Ljava/lang/String;)V
    .locals 0
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportPhone;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 520
    iput-object p2, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportPhone;->phoneNumber:Ljava/lang/String;

    .line 521
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 525
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 526
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportPhone;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/barcode/BarCodeDialog;->access$1102(Lcom/android/camera/barcode/BarCodeDialog;Z)Z

    .line 527
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportPhone;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    iget-object v1, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportPhone;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/barcode/BarCodeDialog;->access$1200(Lcom/android/camera/barcode/BarCodeDialog;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeDialog$StartImportPhone;->this$0:Lcom/android/camera/barcode/BarCodeDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/barcode/BarCodeDialog;->access$1102(Lcom/android/camera/barcode/BarCodeDialog;Z)Z

    .line 529
    return-void
.end method
