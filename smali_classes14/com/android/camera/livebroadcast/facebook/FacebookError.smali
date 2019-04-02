.class public Lcom/android/camera/livebroadcast/facebook/FacebookError;
.super Ljava/lang/Object;
.source "FacebookError.java"


# static fields
.field public static final ERROR_CODE_LACK_PERMISSION:I = 0xc8

.field public static final ERROR_CODE_OAUTH_EXCEPTION:I = 0xbe

.field public static final NONE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMessage(Lcom/facebook/FacebookRequestError;)I
    .locals 2
    .param p0, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    const/4 v0, -0x1

    .line 13
    if-nez p0, :cond_0

    .line 23
    :goto_0
    return v0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 18
    :sswitch_0
    const v0, 0x7f0800c7

    goto :goto_0

    .line 15
    :sswitch_data_0
    .sparse-switch
        0xbe -> :sswitch_0
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method
