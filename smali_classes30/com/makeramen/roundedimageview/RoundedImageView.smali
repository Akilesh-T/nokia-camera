.class public Lcom/makeramen/roundedimageview/RoundedImageView;
.super Landroid/widget/ImageView;
.source "RoundedImageView.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DEFAULT_BORDER_WIDTH:F = 0.0f

.field public static final DEFAULT_RADIUS:F = 0.0f

.field public static final DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

.field private static final SCALE_TYPES:[Landroid/widget/ImageView$ScaleType;

.field public static final TAG:Ljava/lang/String; = "RoundedImageView"

.field private static final TILE_MODE_CLAMP:I = 0x0

.field private static final TILE_MODE_MIRROR:I = 0x2

.field private static final TILE_MODE_REPEAT:I = 0x1

.field private static final TILE_MODE_UNDEFINED:I = -0x2


# instance fields
.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundResource:I

.field private mBorderColor:Landroid/content/res/ColorStateList;

.field private mBorderWidth:F

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColorMod:Z

.field private final mCornerRadii:[F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHasColorFilter:Z

.field private mIsOval:Z

.field private mMutateBackground:Z

.field private mResource:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mTileModeX:Landroid/graphics/Shader$TileMode;

.field private mTileModeY:Landroid/graphics/Shader$TileMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    const-class v0, Lcom/makeramen/roundedimageview/RoundedImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/makeramen/roundedimageview/RoundedImageView;->$assertionsDisabled:Z

    .line 50
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sput-object v0, Lcom/makeramen/roundedimageview/RoundedImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v3, v0, v2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/makeramen/roundedimageview/RoundedImageView;->SCALE_TYPES:[Landroid/widget/ImageView$ScaleType;

    return-void

    :cond_0
    move v0, v2

    .line 38
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    .line 66
    const/high16 v0, -0x1000000

    .line 67
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderWidth:F

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 70
    iput-boolean v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mColorMod:Z

    .line 72
    iput-boolean v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mHasColorFilter:Z

    .line 73
    iput-boolean v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mIsOval:Z

    .line 74
    iput-boolean v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mMutateBackground:Z

    .line 78
    sget-object v0, Lcom/makeramen/roundedimageview/RoundedImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 79
    sget-object v0, Lcom/makeramen/roundedimageview/RoundedImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 83
    return-void

    .line 62
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 90
    invoke-direct/range {p0 .. p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    const/4 v12, 0x4

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    .line 66
    const/high16 v12, -0x1000000

    .line 67
    invoke-static {v12}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 68
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderWidth:F

    .line 69
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 70
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mColorMod:Z

    .line 72
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mHasColorFilter:Z

    .line 73
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mIsOval:Z

    .line 74
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mMutateBackground:Z

    .line 78
    sget-object v12, Lcom/makeramen/roundedimageview/RoundedImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 79
    sget-object v12, Lcom/makeramen/roundedimageview/RoundedImageView;->DEFAULT_TILE_MODE:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 92
    sget-object v12, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView:[I

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v12, v2, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 94
    .local v3, "a":Landroid/content/res/TypedArray;
    sget v12, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_android_scaleType:I

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 95
    .local v7, "index":I
    if-ltz v7, :cond_0

    .line 96
    sget-object v12, Lcom/makeramen/roundedimageview/RoundedImageView;->SCALE_TYPES:[Landroid/widget/ImageView$ScaleType;

    aget-object v12, v12, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/makeramen/roundedimageview/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 102
    :goto_0
    sget v12, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_corner_radius:I

    const/4 v13, -0x1

    .line 103
    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    int-to-float v5, v12

    .line 105
    .local v5, "cornerRadiusOverride":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    const/4 v13, 0x0

    sget v14, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_corner_radius_top_left:I

    const/4 v15, -0x1

    .line 106
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    int-to-float v14, v14

    aput v14, v12, v13

    .line 107
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    const/4 v13, 0x1

    sget v14, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_corner_radius_top_right:I

    const/4 v15, -0x1

    .line 108
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    int-to-float v14, v14

    aput v14, v12, v13

    .line 109
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    const/4 v13, 0x2

    sget v14, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_corner_radius_bottom_right:I

    const/4 v15, -0x1

    .line 110
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    int-to-float v14, v14

    aput v14, v12, v13

    .line 111
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    const/4 v13, 0x3

    sget v14, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_corner_radius_bottom_left:I

    const/4 v15, -0x1

    .line 112
    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    int-to-float v14, v14

    aput v14, v12, v13

    .line 114
    const/4 v4, 0x0

    .line 115
    .local v4, "any":Z
    const/4 v6, 0x0

    .local v6, "i":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    array-length v8, v12

    .local v8, "len":I
    :goto_1
    if-ge v6, v8, :cond_2

    .line 116
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    aget v12, v12, v6

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 117
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    const/4 v13, 0x0

    aput v13, v12, v6

    .line 115
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 99
    .end local v4    # "any":Z
    .end local v5    # "cornerRadiusOverride":F
    .end local v6    # "i":I
    .end local v8    # "len":I
    :cond_0
    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/makeramen/roundedimageview/RoundedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 119
    .restart local v4    # "any":Z
    .restart local v5    # "cornerRadiusOverride":F
    .restart local v6    # "i":I
    .restart local v8    # "len":I
    :cond_1
    const/4 v4, 0x1

    goto :goto_2

    .line 123
    :cond_2
    if-nez v4, :cond_4

    .line 124
    const/4 v12, 0x0

    cmpg-float v12, v5, v12

    if-gez v12, :cond_3

    .line 125
    const/4 v5, 0x0

    .line 127
    :cond_3
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    array-length v8, v12

    :goto_3
    if-ge v6, v8, :cond_4

    .line 128
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    aput v5, v12, v6

    .line 127
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 132
    :cond_4
    sget v12, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_border_width:I

    const/4 v13, -0x1

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderWidth:F

    .line 133
    move-object/from16 v0, p0

    iget v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderWidth:F

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    .line 134
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderWidth:F

    .line 137
    :cond_5
    sget v12, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_border_color:I

    invoke-virtual {v3, v12}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 138
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    if-nez v12, :cond_6

    .line 139
    const/high16 v12, -0x1000000

    invoke-static {v12}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 142
    :cond_6
    sget v12, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_mutate_background:I

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mMutateBackground:Z

    .line 143
    sget v12, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_oval:I

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mIsOval:Z

    .line 145
    sget v12, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_tile_mode:I

    const/4 v13, -0x2

    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 146
    .local v9, "tileMode":I
    const/4 v12, -0x2

    if-eq v9, v12, :cond_7

    .line 147
    invoke-static {v9}, Lcom/makeramen/roundedimageview/RoundedImageView;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 148
    invoke-static {v9}, Lcom/makeramen/roundedimageview/RoundedImageView;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 151
    :cond_7
    sget v12, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_tile_mode_x:I

    const/4 v13, -0x2

    .line 152
    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    .line 153
    .local v10, "tileModeX":I
    const/4 v12, -0x2

    if-eq v10, v12, :cond_8

    .line 154
    invoke-static {v10}, Lcom/makeramen/roundedimageview/RoundedImageView;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 157
    :cond_8
    sget v12, Lcom/makeramen/roundedimageview/R$styleable;->RoundedImageView_riv_tile_mode_y:I

    const/4 v13, -0x2

    .line 158
    invoke-virtual {v3, v12, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    .line 159
    .local v11, "tileModeY":I
    const/4 v12, -0x2

    if-eq v11, v12, :cond_9

    .line 160
    invoke-static {v11}, Lcom/makeramen/roundedimageview/RoundedImageView;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/makeramen/roundedimageview/RoundedImageView;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 163
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateDrawableAttrs()V

    .line 164
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 166
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mMutateBackground:Z

    if-eqz v12, :cond_a

    .line 172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    invoke-super {v0, v12}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    :cond_a
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    return-void

    .line 62
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private applyColorMod()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mColorMod:Z

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 346
    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mHasColorFilter:Z

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 353
    :cond_0
    return-void
.end method

.method private static parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .locals 1
    .param p0, "tileMode"    # I

    .prologue
    .line 179
    packed-switch p0, :pswitch_data_0

    .line 187
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 181
    :pswitch_0
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 183
    :pswitch_1
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 185
    :pswitch_2
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private resolveBackgroundResource()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 301
    .local v2, "rsrc":Landroid/content/res/Resources;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    .line 314
    :goto_0
    return-object v3

    .line 303
    :cond_0
    const/4 v0, 0x0

    .line 305
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBackgroundResource:I

    if-eqz v3, :cond_1

    .line 307
    :try_start_0
    iget v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBackgroundResource:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 314
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 308
    :catch_0
    move-exception v1

    .line 309
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "RoundedImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBackgroundResource:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 311
    const/4 v3, 0x0

    iput v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBackgroundResource:I

    goto :goto_1
.end method

.method private resolveResource()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 263
    .local v2, "rsrc":Landroid/content/res/Resources;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    .line 276
    :goto_0
    return-object v3

    .line 265
    :cond_0
    const/4 v0, 0x0

    .line 267
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mResource:I

    if-eqz v3, :cond_1

    .line 269
    :try_start_0
    iget v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mResource:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 276
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "RoundedImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mResource:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    const/4 v3, 0x0

    iput v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mResource:I

    goto :goto_1
.end method

.method private updateAttrs(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 356
    if-nez p1, :cond_1

    .line 383
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 358
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v3, p1, Lcom/makeramen/roundedimageview/RoundedDrawable;

    if-eqz v3, :cond_3

    move-object v3, p1

    .line 359
    check-cast v3, Lcom/makeramen/roundedimageview/RoundedDrawable;

    .line 360
    invoke-virtual {v3, p2}, Lcom/makeramen/roundedimageview/RoundedDrawable;->setScaleType(Landroid/widget/ImageView$ScaleType;)Lcom/makeramen/roundedimageview/RoundedDrawable;

    move-result-object v3

    iget v4, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderWidth:F

    .line 361
    invoke-virtual {v3, v4}, Lcom/makeramen/roundedimageview/RoundedDrawable;->setBorderWidth(F)Lcom/makeramen/roundedimageview/RoundedDrawable;

    move-result-object v3

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 362
    invoke-virtual {v3, v4}, Lcom/makeramen/roundedimageview/RoundedDrawable;->setBorderColor(Landroid/content/res/ColorStateList;)Lcom/makeramen/roundedimageview/RoundedDrawable;

    move-result-object v3

    iget-boolean v4, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mIsOval:Z

    .line 363
    invoke-virtual {v3, v4}, Lcom/makeramen/roundedimageview/RoundedDrawable;->setOval(Z)Lcom/makeramen/roundedimageview/RoundedDrawable;

    move-result-object v3

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 364
    invoke-virtual {v3, v4}, Lcom/makeramen/roundedimageview/RoundedDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)Lcom/makeramen/roundedimageview/RoundedDrawable;

    move-result-object v3

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 365
    invoke-virtual {v3, v4}, Lcom/makeramen/roundedimageview/RoundedDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)Lcom/makeramen/roundedimageview/RoundedDrawable;

    .line 367
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    if-eqz v3, :cond_2

    .line 368
    check-cast p1, Lcom/makeramen/roundedimageview/RoundedDrawable;

    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/makeramen/roundedimageview/RoundedDrawable;->setCornerRadius(FFFF)Lcom/makeramen/roundedimageview/RoundedDrawable;

    .line 375
    :cond_2
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->applyColorMod()V

    goto :goto_0

    .line 376
    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    instance-of v3, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 378
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 379
    .local v2, "ld":Landroid/graphics/drawable/LayerDrawable;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    .local v1, "layers":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 380
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateBackgroundDrawableAttrs(Z)V
    .locals 2
    .param p1, "convert"    # Z

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mMutateBackground:Z

    if-eqz v0, :cond_1

    .line 323
    if-eqz p1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/makeramen/roundedimageview/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, v0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    .line 328
    :cond_1
    return-void
.end method

.method private updateDrawableAttrs()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-direct {p0, v0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateAttrs(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    .line 319
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 194
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    .line 195
    return-void
.end method

.method public getBorderColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 514
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getBorderColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBorderWidth()F
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderWidth:F

    return v0
.end method

.method public getCornerRadius()F
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getMaxCornerRadius()F

    move-result v0

    return v0
.end method

.method public getCornerRadius(I)F
    .locals 1
    .param p1, "corner"    # I

    .prologue
    .line 419
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    aget v0, v0, p1

    return v0
.end method

.method public getMaxCornerRadius()F
    .locals 5

    .prologue
    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "maxRadius":F
    iget-object v3, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v3, v2

    .line 407
    .local v1, "r":F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 409
    .end local v1    # "r":F
    :cond_0
    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method public isOval()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mIsOval:Z

    return v0
.end method

.method public mutateBackground(Z)V
    .locals 1
    .param p1, "mutate"    # Z

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mMutateBackground:Z

    if-ne v0, p1, :cond_0

    .line 584
    :goto_0
    return-void

    .line 581
    :cond_0
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mMutateBackground:Z

    .line 582
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 583
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public mutatesBackground()Z
    .locals 1

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mMutateBackground:Z

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 295
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 296
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 388
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 389
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 391
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 286
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBackgroundResource:I

    if-eq v0, p1, :cond_0

    .line 287
    iput p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBackgroundResource:I

    .line 288
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->resolveBackgroundResource()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 289
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 518
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBorderColor(Landroid/content/res/ColorStateList;)V

    .line 519
    return-void
.end method

.method public setBorderColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 526
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    .end local p1    # "colors":Landroid/content/res/ColorStateList;
    :cond_0
    :goto_0
    return-void

    .line 528
    .restart local p1    # "colors":Landroid/content/res/ColorStateList;
    :cond_1
    if-eqz p1, :cond_2

    .line 529
    .end local p1    # "colors":Landroid/content/res/ColorStateList;
    :goto_1
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderColor:Landroid/content/res/ColorStateList;

    .line 530
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateDrawableAttrs()V

    .line 531
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 532
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    goto :goto_0

    .line 528
    .restart local p1    # "colors":Landroid/content/res/ColorStateList;
    :cond_2
    const/high16 v0, -0x1000000

    .line 529
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_1
.end method

.method public setBorderWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 504
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 510
    :goto_0
    return-void

    .line 506
    :cond_0
    iput p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mBorderWidth:F

    .line 507
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateDrawableAttrs()V

    .line 508
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 509
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setBorderWidth(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setBorderWidth(F)V

    .line 501
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    const/4 v1, 0x1

    .line 331
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 332
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 333
    iput-boolean v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mHasColorFilter:Z

    .line 334
    iput-boolean v1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mColorMod:Z

    .line 335
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->applyColorMod()V

    .line 336
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    .line 338
    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 448
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/makeramen/roundedimageview/RoundedImageView;->setCornerRadius(FFFF)V

    .line 449
    return-void
.end method

.method public setCornerRadius(FFFF)V
    .locals 5
    .param p1, "topLeft"    # F
    .param p2, "topRight"    # F
    .param p3, "bottomLeft"    # F
    .param p4, "bottomRight"    # F

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 478
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    aget v0, v0, v1

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    aget v0, v0, v2

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    aget v0, v0, v3

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    aget v0, v0, v4

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    .line 493
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    aput p1, v0, v1

    .line 486
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    aput p2, v0, v2

    .line 487
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    aput p3, v0, v4

    .line 488
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    aput p4, v0, v3

    .line 490
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateDrawableAttrs()V

    .line 491
    invoke-direct {p0, v1}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 492
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setCornerRadius(IF)V
    .locals 1
    .param p1, "corner"    # I
    .param p2, "radius"    # F

    .prologue
    .line 458
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    aget v0, v0, p1

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    .line 466
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mCornerRadii:[F

    aput p2, v0, p1

    .line 463
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateDrawableAttrs()V

    .line 464
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 465
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setCornerRadiusDimen(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 429
    .local v0, "radius":F
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setCornerRadius(FFFF)V

    .line 430
    return-void
.end method

.method public setCornerRadiusDimen(II)V
    .locals 1
    .param p1, "corner"    # I
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setCornerRadius(IF)V

    .line 440
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mResource:I

    .line 241
    invoke-static {p1}, Lcom/makeramen/roundedimageview/RoundedDrawable;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/makeramen/roundedimageview/RoundedDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 242
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateDrawableAttrs()V

    .line 243
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mResource:I

    .line 233
    invoke-static {p1}, Lcom/makeramen/roundedimageview/RoundedDrawable;->fromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 234
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateDrawableAttrs()V

    .line 235
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 248
    iget v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mResource:I

    if-eq v0, p1, :cond_0

    .line 249
    iput p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mResource:I

    .line 250
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->resolveResource()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 251
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateDrawableAttrs()V

    .line 252
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 258
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    return-void
.end method

.method public setOval(Z)V
    .locals 1
    .param p1, "oval"    # Z

    .prologue
    .line 542
    iput-boolean p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mIsOval:Z

    .line 543
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateDrawableAttrs()V

    .line 544
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 545
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    .line 546
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 2
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 204
    sget-boolean v0, Lcom/makeramen/roundedimageview/RoundedImageView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1

    .line 207
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 209
    sget-object v0, Lcom/makeramen/roundedimageview/RoundedImageView$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 220
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 224
    :goto_0
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateDrawableAttrs()V

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 226
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    .line 228
    :cond_1
    return-void

    .line 217
    :pswitch_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .param p1, "tileModeX"    # Landroid/graphics/Shader$TileMode;

    .prologue
    .line 553
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    .line 559
    :goto_0
    return-void

    .line 555
    :cond_0
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mTileModeX:Landroid/graphics/Shader$TileMode;

    .line 556
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateDrawableAttrs()V

    .line 557
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 558
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    goto :goto_0
.end method

.method public setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1
    .param p1, "tileModeY"    # Landroid/graphics/Shader$TileMode;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    if-ne v0, p1, :cond_0

    .line 572
    :goto_0
    return-void

    .line 568
    :cond_0
    iput-object p1, p0, Lcom/makeramen/roundedimageview/RoundedImageView;->mTileModeY:Landroid/graphics/Shader$TileMode;

    .line 569
    invoke-direct {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateDrawableAttrs()V

    .line 570
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/makeramen/roundedimageview/RoundedImageView;->updateBackgroundDrawableAttrs(Z)V

    .line 571
    invoke-virtual {p0}, Lcom/makeramen/roundedimageview/RoundedImageView;->invalidate()V

    goto :goto_0
.end method
