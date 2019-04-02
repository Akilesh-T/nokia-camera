.class public Lcom/android/camera/barcode/BarCodeResult;
.super Ljava/lang/Object;
.source "BarCodeResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/barcode/BarCodeResult$ResultType;
    }
.end annotation


# instance fields
.field private mGoogleBarCode:Lcom/google/android/gms/vision/barcode/Barcode;

.field private mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

.field private mZxingResult:Lcom/google/zxing/Result;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoogleBarCode()Lcom/google/android/gms/vision/barcode/Barcode;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeResult;->mGoogleBarCode:Lcom/google/android/gms/vision/barcode/Barcode;

    return-object v0
.end method

.method public getType()Lcom/android/camera/barcode/BarCodeResult$ResultType;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeResult;->mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    return-object v0
.end method

.method public getZxingResult()Lcom/google/zxing/Result;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/barcode/BarCodeResult;->mZxingResult:Lcom/google/zxing/Result;

    return-object v0
.end method

.method public setGoogleBarCode(Lcom/google/android/gms/vision/barcode/Barcode;)V
    .locals 2
    .param p1, "barCode"    # Lcom/google/android/gms/vision/barcode/Barcode;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/camera/barcode/BarCodeResult;->mGoogleBarCode:Lcom/google/android/gms/vision/barcode/Barcode;

    .line 32
    if-eqz p1, :cond_0

    .line 33
    iget v0, p1, Lcom/google/android/gms/vision/barcode/Barcode;->valueFormat:I

    .line 34
    .local v0, "valueFormat":I
    packed-switch v0, :pswitch_data_0

    .line 72
    .end local v0    # "valueFormat":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 36
    .restart local v0    # "valueFormat":I
    :pswitch_1
    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->URL:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    iput-object v1, p0, Lcom/android/camera/barcode/BarCodeResult;->mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    goto :goto_0

    .line 39
    :pswitch_2
    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->GEO:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    iput-object v1, p0, Lcom/android/camera/barcode/BarCodeResult;->mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    goto :goto_0

    .line 42
    :pswitch_3
    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->TEXT:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    iput-object v1, p0, Lcom/android/camera/barcode/BarCodeResult;->mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    goto :goto_0

    .line 45
    :pswitch_4
    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->ISBN:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    iput-object v1, p0, Lcom/android/camera/barcode/BarCodeResult;->mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    goto :goto_0

    .line 48
    :pswitch_5
    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->TEL:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    iput-object v1, p0, Lcom/android/camera/barcode/BarCodeResult;->mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    goto :goto_0

    .line 51
    :pswitch_6
    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->SMS:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    iput-object v1, p0, Lcom/android/camera/barcode/BarCodeResult;->mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    goto :goto_0

    .line 54
    :pswitch_7
    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->EMAIL:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    iput-object v1, p0, Lcom/android/camera/barcode/BarCodeResult;->mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    goto :goto_0

    .line 57
    :pswitch_8
    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->WIFI:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    iput-object v1, p0, Lcom/android/camera/barcode/BarCodeResult;->mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    goto :goto_0

    .line 60
    :pswitch_9
    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->CONTACT:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    iput-object v1, p0, Lcom/android/camera/barcode/BarCodeResult;->mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    goto :goto_0

    .line 63
    :pswitch_a
    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->CALENDAR:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    iput-object v1, p0, Lcom/android/camera/barcode/BarCodeResult;->mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    goto :goto_0

    .line 66
    :pswitch_b
    sget-object v1, Lcom/android/camera/barcode/BarCodeResult$ResultType;->DRIVER_LICENSE:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    iput-object v1, p0, Lcom/android/camera/barcode/BarCodeResult;->mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_1
        :pswitch_8
        :pswitch_2
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setZxingResult(Lcom/google/zxing/Result;)V
    .locals 4
    .param p1, "result"    # Lcom/google/zxing/Result;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/camera/barcode/BarCodeResult;->mZxingResult:Lcom/google/zxing/Result;

    .line 76
    if-eqz p1, :cond_0

    .line 77
    invoke-static {p1}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v0

    .line 78
    .local v0, "parsedResult":Lcom/google/zxing/client/result/ParsedResult;
    invoke-virtual {v0}, Lcom/google/zxing/client/result/ParsedResult;->getType()Lcom/google/zxing/client/result/ParsedResultType;

    move-result-object v1

    .line 79
    .local v1, "parsedResultType":Lcom/google/zxing/client/result/ParsedResultType;
    sget-object v2, Lcom/android/camera/barcode/BarCodeResult$1;->$SwitchMap$com$google$zxing$client$result$ParsedResultType:[I

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResultType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 119
    .end local v0    # "parsedResult":Lcom/google/zxing/client/result/ParsedResult;
    .end local v1    # "parsedResultType":Lcom/google/zxing/client/result/ParsedResultType;
    :cond_0
    :goto_0
    return-void

    .line 81
    .restart local v0    # "parsedResult":Lcom/google/zxing/client/result/ParsedResult;
    .restart local v1    # "parsedResultType":Lcom/google/zxing/client/result/ParsedResultType;
    :pswitch_0
    sget-object v2, Lcom/android/camera/barcode/BarCodeResult$ResultType;->URL:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    iput-object v2, p0, Lcom/android/camera/barcode/BarCodeResult;->mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    goto :goto_0

    .line 84
    :pswitch_1
    sget-object v2, Lcom/android/camera/barcode/BarCodeResult$ResultType;->GEO:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    iput-object v2, p0, Lcom/android/camera/barcode/BarCodeResult;->mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    goto :goto_0

    .line 87
    :pswitch_2
    sget-object v2, Lcom/android/camera/barcode/BarCodeResult$ResultType;->TEXT:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    iput-object v2, p0, Lcom/android/camera/barcode/BarCodeResult;->mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    goto :goto_0

    .line 90
    :pswitch_3
    sget-object v2, Lcom/android/camera/barcode/BarCodeResult$ResultType;->ISBN:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    iput-object v2, p0, Lcom/android/camera/barcode/BarCodeResult;->mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    goto :goto_0

    .line 93
    :pswitch_4
    sget-object v2, Lcom/android/camera/barcode/BarCodeResult$ResultType;->TEL:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    iput-object v2, p0, Lcom/android/camera/barcode/BarCodeResult;->mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    goto :goto_0

    .line 96
    :pswitch_5
    sget-object v2, Lcom/android/camera/barcode/BarCodeResult$ResultType;->SMS:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    iput-object v2, p0, Lcom/android/camera/barcode/BarCodeResult;->mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    goto :goto_0

    .line 99
    :pswitch_6
    sget-object v2, Lcom/android/camera/barcode/BarCodeResult$ResultType;->EMAIL:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    iput-object v2, p0, Lcom/android/camera/barcode/BarCodeResult;->mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    goto :goto_0

    .line 102
    :pswitch_7
    sget-object v2, Lcom/android/camera/barcode/BarCodeResult$ResultType;->WIFI:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    iput-object v2, p0, Lcom/android/camera/barcode/BarCodeResult;->mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    goto :goto_0

    .line 105
    :pswitch_8
    sget-object v2, Lcom/android/camera/barcode/BarCodeResult$ResultType;->CONTACT:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    iput-object v2, p0, Lcom/android/camera/barcode/BarCodeResult;->mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    goto :goto_0

    .line 108
    :pswitch_9
    sget-object v2, Lcom/android/camera/barcode/BarCodeResult$ResultType;->CALENDAR:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    iput-object v2, p0, Lcom/android/camera/barcode/BarCodeResult;->mType:Lcom/android/camera/barcode/BarCodeResult$ResultType;

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
