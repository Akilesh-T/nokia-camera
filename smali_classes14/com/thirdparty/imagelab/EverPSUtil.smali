.class public Lcom/thirdparty/imagelab/EverPSUtil;
.super Ljava/lang/Object;
.source "EverPSUtil.java"


# static fields
.field static final VERSION:Ljava/lang/String; = "psmodelsdk-v2.0.3"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getModelType(Ljava/lang/String;)Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;
    .locals 3
    .param p0, "productName"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 63
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;->NORMAL:Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    .line 66
    .local v0, "type":Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;
    :goto_1
    return-object v0

    .line 58
    .end local v0    # "type":Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;
    :pswitch_0
    const-string v2, "ROO"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 60
    :pswitch_1
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;->FAST:Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;

    .line 61
    .restart local v0    # "type":Lcom/fih_foxconn/imagelab/PSModelBuilder$ModelType;
    goto :goto_1

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x13db2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static getPlatform(Ljava/lang/String;)Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;
    .locals 3
    .param p0, "productName"    # Ljava/lang/String;

    .prologue
    .line 13
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->OTHERS:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    .line 14
    .local v0, "platform":Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 28
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->OTHERS:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    .line 31
    :goto_1
    return-object v0

    .line 14
    :sswitch_0
    const-string v2, "DRG"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "A1N"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "B2N"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "NB1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "AOP"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "PNX"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "CASTLE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "PDA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    .line 22
    :pswitch_0
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->QCT:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    .line 23
    goto :goto_1

    .line 25
    :pswitch_1
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;->MTK:Lcom/fih_foxconn/imagelab/PSModelBuilder$Platform;

    .line 26
    goto :goto_1

    .line 14
    :sswitch_data_0
    .sparse-switch
        0xfa3e -> :sswitch_1
        0xfde2 -> :sswitch_4
        0xfe1e -> :sswitch_2
        0x10979 -> :sswitch_0
        0x12cfd -> :sswitch_3
        0x134cd -> :sswitch_7
        0x1361a -> :sswitch_5
        0x760fa8f8 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getRuntimeTarget(Ljava/lang/String;)Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;
    .locals 3
    .param p0, "productName"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->CPU:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    .line 36
    .local v0, "runtime":Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 50
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->CPU:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    .line 53
    :goto_1
    return-object v0

    .line 36
    :sswitch_0
    const-string v2, "DRG"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "A1N"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "B2N"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "NB1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "AOP"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "PNX"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "CASTLE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "PDA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    .line 44
    :pswitch_0
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->GPU_FLOAT16:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    .line 45
    goto :goto_1

    .line 47
    :pswitch_1
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;->DSP:Lcom/fih_foxconn/imagelab/PSModelBuilder$Runtime;

    .line 48
    goto :goto_1

    .line 36
    :sswitch_data_0
    .sparse-switch
        0xfa3e -> :sswitch_1
        0xfde2 -> :sswitch_4
        0xfe1e -> :sswitch_2
        0x10979 -> :sswitch_0
        0x12cfd -> :sswitch_3
        0x134cd -> :sswitch_7
        0x1361a -> :sswitch_5
        0x760fa8f8 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
