.class synthetic Lcom/android/camera/ui/BarcodeRotateLayout$5;
.super Ljava/lang/Object;
.source "BarcodeRotateLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/BarcodeRotateLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$camera$barcode$BarCodeResult$ResultType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 142
    invoke-static {}, Lcom/android/camera/barcode/BarCodeResult$ResultType;->values()[Lcom/android/camera/barcode/BarCodeResult$ResultType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/ui/BarcodeRotateLayout$5;->$SwitchMap$com$android$camera$barcode$BarCodeResult$ResultType:[I

    :try_start_0
    sget-object v0, Lcom/android/camera/ui/BarcodeRotateLayout$5;->$SwitchMap$com$android$camera$barcode$BarCodeResult$ResultType:[I

    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->URL:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    invoke-virtual {v1}, Lcom/android/camera/barcode/BarCodeResult$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/camera/ui/BarcodeRotateLayout$5;->$SwitchMap$com$android$camera$barcode$BarCodeResult$ResultType:[I

    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->GEO:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    invoke-virtual {v1}, Lcom/android/camera/barcode/BarCodeResult$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/camera/ui/BarcodeRotateLayout$5;->$SwitchMap$com$android$camera$barcode$BarCodeResult$ResultType:[I

    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->TEXT:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    invoke-virtual {v1}, Lcom/android/camera/barcode/BarCodeResult$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/camera/ui/BarcodeRotateLayout$5;->$SwitchMap$com$android$camera$barcode$BarCodeResult$ResultType:[I

    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->ISBN:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    invoke-virtual {v1}, Lcom/android/camera/barcode/BarCodeResult$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/camera/ui/BarcodeRotateLayout$5;->$SwitchMap$com$android$camera$barcode$BarCodeResult$ResultType:[I

    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->TEL:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    invoke-virtual {v1}, Lcom/android/camera/barcode/BarCodeResult$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/camera/ui/BarcodeRotateLayout$5;->$SwitchMap$com$android$camera$barcode$BarCodeResult$ResultType:[I

    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->SMS:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    invoke-virtual {v1}, Lcom/android/camera/barcode/BarCodeResult$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/camera/ui/BarcodeRotateLayout$5;->$SwitchMap$com$android$camera$barcode$BarCodeResult$ResultType:[I

    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->EMAIL:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    invoke-virtual {v1}, Lcom/android/camera/barcode/BarCodeResult$ResultType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v0, Lcom/android/camera/ui/BarcodeRotateLayout$5;->$SwitchMap$com$android$camera$barcode$BarCodeResult$ResultType:[I

    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->WIFI:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    invoke-virtual {v1}, Lcom/android/camera/barcode/BarCodeResult$ResultType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v0, Lcom/android/camera/ui/BarcodeRotateLayout$5;->$SwitchMap$com$android$camera$barcode$BarCodeResult$ResultType:[I

    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->CONTACT:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    invoke-virtual {v1}, Lcom/android/camera/barcode/BarCodeResult$ResultType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v0, Lcom/android/camera/ui/BarcodeRotateLayout$5;->$SwitchMap$com$android$camera$barcode$BarCodeResult$ResultType:[I

    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->CALENDAR:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    invoke-virtual {v1}, Lcom/android/camera/barcode/BarCodeResult$ResultType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v0, Lcom/android/camera/ui/BarcodeRotateLayout$5;->$SwitchMap$com$android$camera$barcode$BarCodeResult$ResultType:[I

    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->DRIVER_LICENSE:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    invoke-virtual {v1}, Lcom/android/camera/barcode/BarCodeResult$ResultType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    return-void

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_3

    :catch_8
    move-exception v0

    goto :goto_2

    :catch_9
    move-exception v0

    goto :goto_1

    :catch_a
    move-exception v0

    goto/16 :goto_0
.end method
