.class public Lcom/android/camera/util/product/MobileDevice;
.super Ljava/lang/Object;
.source "MobileDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/util/product/MobileDevice$Devices;
    }
.end annotation


# static fields
.field public static final CurrentDevice:Lcom/android/camera/util/product/MobileDevice$Devices;

.field private static final PERSIST_BOOT_DEVICE:Ljava/lang/String; = "ro.boot.device"

.field private static final PERSIST_BUILD_PRODUCT:Ljava/lang/String; = "ro.build.product"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "MobileDevice"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/util/product/MobileDevice;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 15
    invoke-static {}, Lcom/android/camera/util/product/MobileDevice;->getCurrentDevice()Lcom/android/camera/util/product/MobileDevice$Devices;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/product/MobileDevice;->CurrentDevice:Lcom/android/camera/util/product/MobileDevice$Devices;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurrentDevice()Lcom/android/camera/util/product/MobileDevice$Devices;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 50
    const-string v2, "ro.boot.device"

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "productName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    const-string v2, "ro.build.product"

    invoke-static {v2, v3}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    const-string v1, ""

    .line 58
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 132
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->UNKNOWN:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 136
    .local v0, "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :goto_1
    sget-object v2, Lcom/android/camera/util/product/MobileDevice;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "productName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", device = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 138
    return-object v0

    .line 58
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :sswitch_0
    const-string v4, "NB1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "ES2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v4, "FRT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "C1N"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "A1N"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v4, "B2N"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string v4, "NE1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string v4, "PL2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_8
    const-string v4, "CO2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string v4, "E1M"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v4, "E2M"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v4, "DRG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v4, "ND1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v4, "D1C"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v4, "PLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v4, "PDA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string v4, "CTL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string v4, "ROO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string v4, "PDP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string v4, "DRP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string v4, "PNX"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x14

    goto/16 :goto_0

    :sswitch_15
    const-string v4, "RHD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x15

    goto/16 :goto_0

    :sswitch_16
    const-string v4, "EAG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x16

    goto/16 :goto_0

    :sswitch_17
    const-string v4, "TAS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x17

    goto/16 :goto_0

    .line 60
    :pswitch_0
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->NB1:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 61
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 63
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_1
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->ES2:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 64
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 66
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_2
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->FRT:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 67
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 69
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_3
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->C1N:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 70
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 72
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_4
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->A1N:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 73
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 75
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_5
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->B2N:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 76
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 78
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_6
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->NE1:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 79
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 81
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_7
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->PL2:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 82
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 84
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_8
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->CO2:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 85
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 87
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_9
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->E1M:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 88
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 90
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_a
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->E2M:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 91
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 93
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_b
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->DRG:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 94
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 96
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_c
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->ND1:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 97
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 99
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_d
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->D1C:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 100
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 102
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_e
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->PLE:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 103
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 105
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_f
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->PDA:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 106
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 108
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_10
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->CTL:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 109
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 111
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_11
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->ROO:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 112
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 114
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_12
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->PDP:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 115
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 117
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_13
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->DRP:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 118
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 120
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_14
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->PNX:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 121
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 123
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_15
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->RHD:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 124
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 126
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_16
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->EAG:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 127
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 129
    .end local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    :pswitch_17
    sget-object v0, Lcom/android/camera/util/product/MobileDevice$Devices;->TAS:Lcom/android/camera/util/product/MobileDevice$Devices;

    .line 130
    .restart local v0    # "device":Lcom/android/camera/util/product/MobileDevice$Devices;
    goto/16 :goto_1

    .line 58
    nop

    :sswitch_data_0
    .sparse-switch
        0xfa3e -> :sswitch_4
        0xfe1e -> :sswitch_5
        0x101c0 -> :sswitch_3
        0x10546 -> :sswitch_8
        0x10576 -> :sswitch_d
        0x105fb -> :sswitch_10
        0x10941 -> :sswitch_9
        0x10960 -> :sswitch_a
        0x10979 -> :sswitch_b
        0x10982 -> :sswitch_13
        0x10b2b -> :sswitch_16
        0x10d44 -> :sswitch_1
        0x11108 -> :sswitch_2
        0x12cfd -> :sswitch_0
        0x12d3b -> :sswitch_c
        0x12d5a -> :sswitch_6
        0x134cd -> :sswitch_f
        0x134dc -> :sswitch_12
        0x135b6 -> :sswitch_7
        0x135c9 -> :sswitch_e
        0x1361a -> :sswitch_14
        0x13cce -> :sswitch_15
        0x13db2 -> :sswitch_11
        0x14386 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method
