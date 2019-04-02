.class public Lcom/facebook/appevents/codeless/internal/ViewHierarchy;
.super Ljava/lang/Object;
.source "ViewHierarchy.java"


# static fields
.field private static final ADAPTER_VIEW_ITEM_BITMASK:I = 0x9

.field private static final BUTTON_BITMASK:I = 0x2

.field private static final CHECKBOX_BITMASK:I = 0xf

.field private static final CHILDREN_VIEW_KEY:Ljava/lang/String; = "childviews"

.field private static final CLASS_NAME_KEY:Ljava/lang/String; = "classname"

.field private static final CLASS_RCTROOTVIEW:Ljava/lang/String; = "com.facebook.react.ReactRootView"

.field private static final CLASS_RCTTEXTVIEW:Ljava/lang/String; = "com.facebook.react.views.view.ReactTextView"

.field private static final CLASS_RCTVIEWGROUP:Ljava/lang/String; = "com.facebook.react.views.view.ReactViewGroup"

.field private static final CLASS_TOUCHTARGETHELPER:Ljava/lang/String; = "com.facebook.react.uimanager.TouchTargetHelper"

.field private static final CLASS_TYPE_BITMASK_KEY:Ljava/lang/String; = "classtypebitmask"

.field private static final CLICKABLE_VIEW_BITMASK:I = 0x5

.field private static final DESC_KEY:Ljava/lang/String; = "description"

.field private static final DIMENSION_HEIGHT_KEY:Ljava/lang/String; = "height"

.field private static final DIMENSION_KEY:Ljava/lang/String; = "dimension"

.field private static final DIMENSION_LEFT_KEY:Ljava/lang/String; = "left"

.field private static final DIMENSION_SCROLL_X_KEY:Ljava/lang/String; = "scrollx"

.field private static final DIMENSION_SCROLL_Y_KEY:Ljava/lang/String; = "scrolly"

.field private static final DIMENSION_TOP_KEY:Ljava/lang/String; = "top"

.field private static final DIMENSION_VISIBILITY_KEY:Ljava/lang/String; = "visibility"

.field private static final DIMENSION_WIDTH_KEY:Ljava/lang/String; = "width"

.field private static final GET_ACCESSIBILITY_METHOD:Ljava/lang/String; = "getAccessibilityDelegate"

.field private static final HINT_KEY:Ljava/lang/String; = "hint"

.field private static final ICON_BITMAP:Ljava/lang/String; = "icon_image"

.field private static final ICON_MAX_EDGE_LENGTH:I = 0x2c

.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final IMAGEVIEW_BITMASK:I = 0x1

.field private static final INPUT_BITMASK:I = 0xb

.field private static final LABEL_BITMASK:I = 0xa

.field private static final METHOD_FIND_TOUCHTARGET_VIEW:Ljava/lang/String; = "findTouchTargetView"

.field private static final PICKER_BITMASK:I = 0xc

.field private static final RADIO_GROUP_BITMASK:I = 0xe

.field private static final RATINGBAR_BITMASK:I = 0x10

.field private static RCTRootViewReference:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final REACT_NATIVE_BUTTON_BITMASK:I = 0x6

.field private static final SWITCH_BITMASK:I = 0xd

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_KEY:Ljava/lang/String; = "tag"

.field private static final TEXTVIEW_BITMASK:I = 0x0

.field private static final TEXT_IS_BOLD:Ljava/lang/String; = "is_bold"

.field private static final TEXT_IS_ITALIC:Ljava/lang/String; = "is_italic"

.field private static final TEXT_KEY:Ljava/lang/String; = "text"

.field private static final TEXT_SIZE:Ljava/lang/String; = "font_size"

.field private static final TEXT_STYLE:Ljava/lang/String; = "text_style"

.field private static methodFindTouchTargetView:Ljava/lang/reflect/Method;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    const-class v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->RCTRootViewReference:Ljava/lang/ref/WeakReference;

    .line 118
    sput-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findRCTRootView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 514
    :goto_0
    if-eqz p0, :cond_1

    .line 515
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isRCTRootView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    :goto_1
    return-object p0

    .line 518
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 519
    .local v0, "viewParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    move-object p0, v0

    .line 520
    check-cast p0, Landroid/view/View;

    .line 524
    goto :goto_0

    .line 525
    .end local v0    # "viewParent":Landroid/view/ViewParent;
    :cond_1
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public static getChildrenOfView(Landroid/view/View;)Ljava/util/List;
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p0, :cond_0

    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p0

    .line 138
    check-cast v3, Landroid/view/ViewGroup;

    .line 139
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 140
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 141
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    return-object v0
.end method

.method private static getClassTypeBitmask(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "bitmask":I
    instance-of v1, p0, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 246
    or-int/lit8 v0, v0, 0x2

    .line 249
    :cond_0
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isClickableView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    or-int/lit8 v0, v0, 0x20

    .line 252
    :cond_1
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isAdapterViewItem(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 253
    or-int/lit16 v0, v0, 0x200

    .line 256
    :cond_2
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 257
    or-int/lit16 v0, v0, 0x400

    .line 258
    or-int/lit8 v0, v0, 0x1

    .line 260
    instance-of v1, p0, Landroid/widget/Button;

    if-eqz v1, :cond_3

    .line 261
    or-int/lit8 v0, v0, 0x4

    .line 263
    instance-of v1, p0, Landroid/widget/Switch;

    if-eqz v1, :cond_5

    .line 264
    or-int/lit16 v0, v0, 0x2000

    .line 270
    :cond_3
    :goto_0
    instance-of v1, p0, Landroid/widget/EditText;

    if-eqz v1, :cond_4

    .line 271
    or-int/lit16 v0, v0, 0x800

    .line 286
    :cond_4
    :goto_1
    return v0

    .line 265
    :cond_5
    instance-of v1, p0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_3

    .line 266
    const v1, 0x8000

    or-int/2addr v0, v1

    goto :goto_0

    .line 273
    :cond_6
    instance-of v1, p0, Landroid/widget/Spinner;

    if-nez v1, :cond_7

    instance-of v1, p0, Landroid/widget/DatePicker;

    if-eqz v1, :cond_8

    .line 275
    :cond_7
    or-int/lit16 v0, v0, 0x1000

    goto :goto_1

    .line 276
    :cond_8
    instance-of v1, p0, Landroid/widget/RatingBar;

    if-eqz v1, :cond_9

    .line 277
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    goto :goto_1

    .line 278
    :cond_9
    instance-of v1, p0, Landroid/widget/RadioGroup;

    if-eqz v1, :cond_a

    .line 279
    or-int/lit16 v0, v0, 0x4000

    goto :goto_1

    .line 280
    :cond_a
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 281
    sget-object v1, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->RCTRootViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {p0, v1}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isRCTButton(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 282
    or-int/lit8 v0, v0, 0x40

    goto :goto_1
.end method

.method public static getDictionaryOfView(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 9
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.facebook.react.ReactRootView"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 219
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v7, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->RCTRootViewReference:Ljava/lang/ref/WeakReference;

    .line 222
    :cond_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 225
    .local v6, "json":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {p0, v6}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->setBasicInfoOfView(Landroid/view/View;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    .line 227
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 228
    .local v3, "childviews":Lorg/json/JSONArray;
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getChildrenOfView(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    .line 229
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 230
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 231
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getDictionaryOfView(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    .line 232
    .local v1, "childInfo":Lorg/json/JSONObject;
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 229
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childInfo":Lorg/json/JSONObject;
    :cond_1
    const-string v7, "childviews"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v3    # "childviews":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :goto_1
    return-object v6

    .line 236
    :catch_0
    move-exception v4

    .line 237
    .local v4, "e":Lorg/json/JSONException;
    sget-object v7, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    const-string v8, "Failed to create JSONObject for view."

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static getDimensionOfView(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 391
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 394
    .local v0, "dimension":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "top"

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 395
    const-string v2, "left"

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 396
    const-string v2, "width"

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 397
    const-string v2, "height"

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 398
    const-string v2, "scrollx"

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 399
    const-string v2, "scrolly"

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 400
    const-string v2, "visibility"

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_0
    return-object v0

    .line 401
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Lorg/json/JSONException;
    sget-object v2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    const-string v3, "Failed to create JSONObject for dimension."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getExistingDelegate(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 411
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 412
    .local v2, "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getAccessibilityDelegate"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    .line 413
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 414
    .local v1, "getAccessibilityDelegateMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 415
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$AccessibilityDelegate;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 425
    .end local v1    # "getAccessibilityDelegateMethod":Ljava/lang/reflect/Method;
    .end local v2    # "viewClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v3

    .line 416
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NoSuchMethodException;
    move-object v3, v4

    .line 417
    goto :goto_0

    .line 418
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    move-object v3, v4

    .line 419
    goto :goto_0

    .line 420
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    move-object v3, v4

    .line 421
    goto :goto_0

    .line 422
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalAccessException;
    move-object v3, v4

    .line 423
    goto :goto_0

    .line 424
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v3, v4

    .line 425
    goto :goto_0
.end method

.method public static getExistingOnTouchListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 432
    :try_start_0
    const-string v6, "android.view.View"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mListenerInfo"

    .line 433
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 434
    .local v3, "listenerInfoField":Ljava/lang/reflect/Field;
    if-eqz v3, :cond_0

    .line 435
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 438
    :cond_0
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 439
    .local v4, "listenerObj":Ljava/lang/Object;
    if-nez v4, :cond_2

    move-object v1, v5

    .line 459
    .end local v3    # "listenerInfoField":Ljava/lang/reflect/Field;
    .end local v4    # "listenerObj":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object v1

    .line 443
    .restart local v3    # "listenerInfoField":Ljava/lang/reflect/Field;
    .restart local v4    # "listenerObj":Ljava/lang/Object;
    :cond_2
    const/4 v1, 0x0

    .line 444
    .local v1, "listener":Landroid/view/View$OnTouchListener;
    const-string v6, "android.view.View$ListenerInfo"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mOnTouchListener"

    .line 445
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 446
    .local v2, "listenerField":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_1

    .line 447
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 448
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listener":Landroid/view/View$OnTouchListener;
    check-cast v1, Landroid/view/View$OnTouchListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .restart local v1    # "listener":Landroid/view/View$OnTouchListener;
    goto :goto_0

    .line 452
    .end local v1    # "listener":Landroid/view/View$OnTouchListener;
    .end local v2    # "listenerField":Ljava/lang/reflect/Field;
    .end local v3    # "listenerInfoField":Ljava/lang/reflect/Field;
    .end local v4    # "listenerObj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    sget-object v6, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    move-object v1, v5

    .line 459
    goto :goto_0

    .line 454
    :catch_1
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v6, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 456
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v6, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static getHintOfView(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, "hintObj":Ljava/lang/Object;
    instance-of v1, p0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 382
    check-cast p0, Landroid/widget/TextView;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 387
    .local v0, "hintObj":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    const-string v1, ""

    :goto_1
    return-object v1

    .line 383
    .local v0, "hintObj":Ljava/lang/Object;
    .restart local p0    # "view":Landroid/view/View;
    :cond_1
    instance-of v1, p0, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 384
    check-cast p0, Landroid/widget/EditText;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "hintObj":Ljava/lang/CharSequence;
    goto :goto_0

    .line 387
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static getParentOfView(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 122
    if-nez p0, :cond_0

    move-object v0, v1

    .line 131
    :goto_0
    return-object v0

    .line 126
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 127
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 128
    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 131
    goto :goto_0
.end method

.method public static getTextOfView(Landroid/view/View;)Ljava/lang/String;
    .locals 21
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 332
    const/4 v15, 0x0

    .line 333
    .local v15, "textObj":Ljava/lang/Object;
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v17, p0

    .line 334
    check-cast v17, Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    .line 336
    .local v15, "textObj":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/Switch;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 337
    check-cast p0, Landroid/widget/Switch;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v8

    .line 338
    .local v8, "isOn":Z
    if-eqz v8, :cond_1

    const-string v15, "1"

    .line 376
    .end local v8    # "isOn":Z
    .end local v15    # "textObj":Ljava/lang/CharSequence;
    .restart local p0    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    if-nez v15, :cond_8

    const-string v17, ""

    :goto_1
    return-object v17

    .line 338
    .end local p0    # "view":Landroid/view/View;
    .restart local v8    # "isOn":Z
    .restart local v15    # "textObj":Ljava/lang/CharSequence;
    :cond_1
    const-string v15, "0"

    goto :goto_0

    .line 340
    .end local v8    # "isOn":Z
    .local v15, "textObj":Ljava/lang/Object;
    .restart local p0    # "view":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/Spinner;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v14, p0

    .line 341
    check-cast v14, Landroid/widget/Spinner;

    .line 342
    .local v14, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v14}, Landroid/widget/Spinner;->getCount()I

    move-result v17

    if-lez v17, :cond_0

    .line 343
    check-cast p0, Landroid/widget/Spinner;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v13

    .line 344
    .local v13, "selectedItem":Ljava/lang/Object;
    if-eqz v13, :cond_0

    .line 345
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .local v15, "textObj":Ljava/lang/String;
    goto :goto_0

    .line 348
    .end local v13    # "selectedItem":Ljava/lang/Object;
    .end local v14    # "spinner":Landroid/widget/Spinner;
    .local v15, "textObj":Ljava/lang/Object;
    .restart local p0    # "view":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/DatePicker;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v10, p0

    .line 349
    check-cast v10, Landroid/widget/DatePicker;

    .line 350
    .local v10, "picker":Landroid/widget/DatePicker;
    invoke-virtual {v10}, Landroid/widget/DatePicker;->getYear()I

    move-result v16

    .line 351
    .local v16, "y":I
    invoke-virtual {v10}, Landroid/widget/DatePicker;->getMonth()I

    move-result v9

    .line 352
    .local v9, "m":I
    invoke-virtual {v10}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v5

    .line 353
    .local v5, "d":I
    const-string v17, "%04d-%02d-%02d"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 354
    .local v15, "textObj":Ljava/lang/String;
    goto :goto_0

    .end local v5    # "d":I
    .end local v9    # "m":I
    .end local v10    # "picker":Landroid/widget/DatePicker;
    .end local v16    # "y":I
    .local v15, "textObj":Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/TimePicker;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v10, p0

    .line 355
    check-cast v10, Landroid/widget/TimePicker;

    .line 356
    .local v10, "picker":Landroid/widget/TimePicker;
    invoke-virtual {v10}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 357
    .local v6, "h":I
    invoke-virtual {v10}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 358
    .restart local v9    # "m":I
    const-string v17, "%02d:%02d"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 359
    .local v15, "textObj":Ljava/lang/String;
    goto/16 :goto_0

    .end local v6    # "h":I
    .end local v9    # "m":I
    .end local v10    # "picker":Landroid/widget/TimePicker;
    .local v15, "textObj":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/RadioGroup;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v11, p0

    .line 360
    check-cast v11, Landroid/widget/RadioGroup;

    .line 361
    .local v11, "radioGroup":Landroid/widget/RadioGroup;
    invoke-virtual {v11}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 362
    .local v2, "checkedId":I
    invoke-virtual {v11}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v4

    .line 363
    .local v4, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v4, :cond_0

    .line 364
    invoke-virtual {v11, v7}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 365
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v2, :cond_6

    instance-of v0, v3, Landroid/widget/RadioButton;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 366
    check-cast v3, Landroid/widget/RadioButton;

    .end local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    .line 367
    .local v15, "textObj":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 363
    .restart local v3    # "child":Landroid/view/View;
    .local v15, "textObj":Ljava/lang/Object;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 370
    .end local v2    # "checkedId":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childCount":I
    .end local v7    # "i":I
    .end local v11    # "radioGroup":Landroid/widget/RadioGroup;
    :cond_7
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/RatingBar;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v1, p0

    .line 371
    check-cast v1, Landroid/widget/RatingBar;

    .line 372
    .local v1, "bar":Landroid/widget/RatingBar;
    invoke-virtual {v1}, Landroid/widget/RatingBar;->getRating()F

    move-result v12

    .line 373
    .local v12, "rating":F
    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    .local v15, "textObj":Ljava/lang/String;
    goto/16 :goto_0

    .line 376
    .end local v1    # "bar":Landroid/widget/RatingBar;
    .end local v12    # "rating":F
    .end local v15    # "textObj":Ljava/lang/String;
    :cond_8
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1
.end method

.method public static getTouchReactView([FLandroid/view/View;)Landroid/view/View;
    .locals 8
    .param p0, "location"    # [F
    .param p1, "RCTRootView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 463
    invoke-static {}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->initTouchTargetHelperMethods()V

    .line 464
    sget-object v4, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v2, v3

    .line 483
    :cond_1
    :goto_0
    return-object v2

    .line 469
    :cond_2
    :try_start_0
    sget-object v4, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    .line 470
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 471
    .local v1, "nativeTargetView":Landroid/view/View;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    if-lez v4, :cond_3

    .line 472
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 473
    .local v2, "reactTargetView":Landroid/view/View;
    if-nez v2, :cond_1

    .end local v1    # "nativeTargetView":Landroid/view/View;
    .end local v2    # "reactTargetView":Landroid/view/View;
    :cond_3
    :goto_1
    move-object v2, v3

    .line 483
    goto :goto_0

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 479
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private static getViewLocationOnScreen(Landroid/view/View;)[F
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 529
    new-array v1, v2, [F

    .line 530
    .local v1, "result":[F
    new-array v0, v2, [I

    .line 531
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 532
    aget v2, v0, v3

    int-to-float v2, v2

    aput v2, v1, v3

    .line 533
    aget v2, v0, v4

    int-to-float v2, v2

    aput v2, v1, v4

    .line 534
    return-object v1
.end method

.method private static initTouchTargetHelperMethods()V
    .locals 6

    .prologue
    .line 538
    sget-object v2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 552
    .local v0, "RCTTouchTargetHelper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 543
    .end local v0    # "RCTTouchTargetHelper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_0
    const-string v2, "com.facebook.react.uimanager.TouchTargetHelper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 544
    .restart local v0    # "RCTTouchTargetHelper":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "findTouchTargetView"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, [F

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/ViewGroup;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;

    .line 546
    sget-object v2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->methodFindTouchTargetView:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 547
    :catch_0
    move-exception v1

    .line 548
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 549
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 550
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v2, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static isAdapterViewItem(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 320
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 321
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    .line 322
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v1, :cond_1

    .line 324
    :cond_0
    const/4 v1, 0x1

    .line 328
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isClickableView(Landroid/view/View;)Z
    .locals 9
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 291
    const/4 v3, 0x0

    .line 292
    .local v3, "listenerInfoField":Ljava/lang/reflect/Field;
    :try_start_0
    const-string v7, "android.view.View"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "mListenerInfo"

    .line 293
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 294
    if-eqz v3, :cond_0

    .line 295
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 298
    :cond_0
    const/4 v4, 0x0

    .line 299
    .local v4, "listenerObj":Ljava/lang/Object;
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 300
    if-nez v4, :cond_1

    .line 315
    .end local v4    # "listenerObj":Ljava/lang/Object;
    :goto_0
    return v6

    .line 304
    .restart local v4    # "listenerObj":Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    .line 305
    .local v2, "listenerField":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    .line 306
    .local v1, "listener":Landroid/view/View$OnClickListener;
    const-string v7, "android.view.View$ListenerInfo"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "mOnClickListener"

    .line 307
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 308
    if-eqz v2, :cond_2

    .line 309
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "listener":Landroid/view/View$OnClickListener;
    check-cast v1, Landroid/view/View$OnClickListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .restart local v1    # "listener":Landroid/view/View$OnClickListener;
    :cond_2
    if-eqz v1, :cond_3

    :goto_1
    move v6, v5

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_1

    .line 313
    .end local v1    # "listener":Landroid/view/View$OnClickListener;
    .end local v2    # "listenerField":Ljava/lang/reflect/Field;
    .end local v4    # "listenerObj":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    const-string v7, "Failed to check if the view is clickable."

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isRCTButton(Landroid/view/View;Landroid/view/View;)Z
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "RCTRootView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 488
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "className":Ljava/lang/String;
    const-string v4, "com.facebook.react.views.view.ReactViewGroup"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 490
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getViewLocationOnScreen(Landroid/view/View;)[F

    move-result-object v1

    .line 491
    .local v1, "location":[F
    invoke-static {v1, p1}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTouchReactView([FLandroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 492
    .local v2, "touchTargetView":Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    .line 495
    .end local v1    # "location":[F
    .end local v2    # "touchTargetView":Landroid/view/View;
    :cond_0
    return v3
.end method

.method public static isRCTRootView(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 499
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "className":Ljava/lang/String;
    const-string v1, "com.facebook.react.ReactRootView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isRCTTextView(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 504
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "className":Ljava/lang/String;
    const-string v1, "com.facebook.react.views.view.ReactTextView"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isRCTViewGroup(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 509
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "className":Ljava/lang/String;
    const-string v1, "com.facebook.react.views.view.ReactViewGroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static setAppearanceOfView(Landroid/view/View;Lorg/json/JSONObject;F)Lorg/json/JSONObject;
    .locals 15
    .param p0, "view"    # Landroid/view/View;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "displayDensity"    # F

    .prologue
    const/high16 v14, 0x42300000    # 44.0f

    .line 181
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 182
    .local v8, "textStyle":Lorg/json/JSONObject;
    instance-of v11, p0, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 183
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    move-object v9, v0

    .line 184
    .local v9, "textView":Landroid/widget/TextView;
    invoke-virtual {v9}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v10

    .line 185
    .local v10, "typeface":Landroid/graphics/Typeface;
    if-eqz v10, :cond_0

    .line 186
    const-string v11, "font_size"

    invoke-virtual {v9}, Landroid/widget/TextView;->getTextSize()F

    move-result v12

    float-to-double v12, v12

    invoke-virtual {v8, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 187
    const-string v11, "is_bold"

    invoke-virtual {v10}, Landroid/graphics/Typeface;->isBold()Z

    move-result v12

    invoke-virtual {v8, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 188
    const-string v11, "is_italic"

    invoke-virtual {v10}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v12

    invoke-virtual {v8, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 189
    const-string v11, "text_style"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    .end local v9    # "textView":Landroid/widget/TextView;
    .end local v10    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    instance-of v11, p0, Landroid/widget/ImageView;

    if-eqz v11, :cond_1

    .line 193
    move-object v0, p0

    check-cast v0, Landroid/widget/ImageView;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 194
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v11, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v11, :cond_1

    .line 195
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v11, p2

    cmpg-float v11, v11, v14

    if-gtz v11, :cond_1

    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v11, p2

    cmpg-float v11, v11, v14

    if-gtz v11, :cond_1

    .line 197
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 198
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 199
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 200
    .local v4, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v2, v11, v12, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 201
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 202
    .local v3, "byteArray":[B
    const/4 v11, 0x0

    invoke-static {v3, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, "encoded":Ljava/lang/String;
    const-string v11, "icon_image"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "byteArray":[B
    .end local v4    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "encoded":Ljava/lang/String;
    .end local v8    # "textStyle":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-object p1

    .line 208
    :catch_0
    move-exception v6

    .line 209
    .local v6, "e":Lorg/json/JSONException;
    sget-object v11, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v11, v6}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static setBasicInfoOfView(Landroid/view/View;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 150
    :try_start_0
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "text":Ljava/lang/String;
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getHintOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "hint":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 153
    .local v4, "tag":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 155
    .local v0, "description":Ljava/lang/CharSequence;
    const-string v6, "classname"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v6, "classtypebitmask"

    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getClassTypeBitmask(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    const-string v6, "id"

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isSensitiveUserData(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 159
    const-string v6, "text"

    invoke-virtual {p1, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    :goto_0
    const-string v6, "hint"

    invoke-virtual {p1, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    if-eqz v4, :cond_0

    .line 165
    const-string v6, "tag"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    :cond_0
    if-eqz v0, :cond_1

    .line 168
    const-string v6, "description"

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    :cond_1
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getDimensionOfView(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    .line 171
    .local v1, "dimension":Lorg/json/JSONObject;
    const-string v6, "dimension"

    invoke-virtual {p1, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    .end local v0    # "description":Ljava/lang/CharSequence;
    .end local v1    # "dimension":Lorg/json/JSONObject;
    .end local v3    # "hint":Ljava/lang/String;
    .end local v4    # "tag":Ljava/lang/Object;
    .end local v5    # "text":Ljava/lang/String;
    :goto_1
    return-object p1

    .line 161
    .restart local v0    # "description":Ljava/lang/CharSequence;
    .restart local v3    # "hint":Ljava/lang/String;
    .restart local v4    # "tag":Ljava/lang/Object;
    .restart local v5    # "text":Ljava/lang/String;
    :cond_2
    const-string v6, "text"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    .end local v0    # "description":Ljava/lang/CharSequence;
    .end local v3    # "hint":Ljava/lang/String;
    .end local v4    # "tag":Ljava/lang/Object;
    .end local v5    # "text":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 173
    .local v2, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->TAG:Ljava/lang/String;

    invoke-static {v6, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
