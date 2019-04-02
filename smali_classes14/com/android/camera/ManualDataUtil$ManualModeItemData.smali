.class public Lcom/android/camera/ManualDataUtil$ManualModeItemData;
.super Ljava/lang/Object;
.source "ManualDataUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ManualDataUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManualModeItemData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;,
        Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;
    }
.end annotation


# static fields
.field public static final ICON_NOT_EXIST:I


# instance fields
.field private final mCircleIcon:I

.field private final mData:Ljava/lang/String;

.field private final mHintStyle:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

.field private final mIcon:I

.field private final mIndicatorIcon:I

.field private final mIndicatorPressedIcon:I

.field private final mKey:Ljava/lang/String;

.field private final mManiIcon:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "icon"    # I

    .prologue
    const/4 v0, 0x0

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-object p1, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mKey:Ljava/lang/String;

    .line 501
    iput-object p2, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mData:Ljava/lang/String;

    .line 502
    iput p3, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mIcon:I

    .line 503
    iput v0, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mManiIcon:I

    .line 504
    iput v0, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mCircleIcon:I

    .line 505
    iput v0, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mIndicatorIcon:I

    .line 506
    iput v0, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mIndicatorPressedIcon:I

    .line 507
    sget-object v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;->TEXT_NORMAL:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    iput-object v0, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mHintStyle:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    .line 508
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "maniIcon"    # I
    .param p5, "circleIcon"    # I
    .param p6, "indicatorIcon"    # I
    .param p7, "indicatorPressedIcon"    # I

    .prologue
    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput-object p1, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mKey:Ljava/lang/String;

    .line 513
    iput-object p2, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mData:Ljava/lang/String;

    .line 514
    iput p3, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mIcon:I

    .line 515
    iput p4, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mManiIcon:I

    .line 516
    iput p5, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mCircleIcon:I

    .line 517
    iput p6, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mIndicatorIcon:I

    .line 518
    iput p7, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mIndicatorPressedIcon:I

    .line 519
    sget-object v0, Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;->TEXT_NORMAL:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    iput-object v0, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mHintStyle:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    .line 520
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIILcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "maniIcon"    # I
    .param p5, "circleIcon"    # I
    .param p6, "indicatorIcon"    # I
    .param p7, "indicatorPressedIcon"    # I
    .param p8, "hintStyle"    # Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iput-object p1, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mKey:Ljava/lang/String;

    .line 526
    iput-object p2, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mData:Ljava/lang/String;

    .line 527
    iput p3, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mIcon:I

    .line 528
    iput p4, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mManiIcon:I

    .line 529
    iput p5, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mCircleIcon:I

    .line 530
    iput p6, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mIndicatorIcon:I

    .line 531
    iput p7, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mIndicatorPressedIcon:I

    .line 532
    iput-object p8, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mHintStyle:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    .line 533
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getHintStyle()Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mHintStyle:Lcom/android/camera/ManualDataUtil$ManualModeItemData$HintStyle;

    return-object v0
.end method

.method public getIcon(Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;)I
    .locals 2
    .param p1, "iconType"    # Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;

    .prologue
    .line 548
    sget-object v0, Lcom/android/camera/ManualDataUtil$1;->$SwitchMap$com$android$camera$ManualDataUtil$ManualModeItemData$IconType:[I

    invoke-virtual {p1}, Lcom/android/camera/ManualDataUtil$ManualModeItemData$IconType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 560
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 550
    :pswitch_0
    iget v0, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mIcon:I

    goto :goto_0

    .line 552
    :pswitch_1
    iget v0, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mManiIcon:I

    goto :goto_0

    .line 554
    :pswitch_2
    iget v0, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mCircleIcon:I

    goto :goto_0

    .line 556
    :pswitch_3
    iget v0, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mIndicatorIcon:I

    goto :goto_0

    .line 558
    :pswitch_4
    iget v0, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mIndicatorPressedIcon:I

    goto :goto_0

    .line 548
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/camera/ManualDataUtil$ManualModeItemData;->mKey:Ljava/lang/String;

    return-object v0
.end method
