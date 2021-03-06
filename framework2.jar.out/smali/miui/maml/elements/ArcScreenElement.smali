.class public Lmiui/maml/elements/ArcScreenElement;
.super Lmiui/maml/elements/GeometryScreenElement;
.source "ArcScreenElement.java"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Arc"


# instance fields
.field private mAngle:F

.field private mAngleExp:Lmiui/maml/data/Expression;

.field private mClose:Z

.field private mSweep:F

.field private mSweepExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 29
    const-string v0, "startAngle"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/ArcScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ArcScreenElement;->mAngleExp:Lmiui/maml/data/Expression;

    .line 30
    const-string v0, "sweep"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/ArcScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/data/Expression;->build(Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ArcScreenElement;->mSweepExp:Lmiui/maml/data/Expression;

    .line 31
    const-string v0, "close"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/ArcScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/ArcScreenElement;->mClose:Z

    .line 32
    sget-object v0, Lmiui/maml/elements/ScreenElement$Align;->CENTER:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v0, p0, Lmiui/maml/elements/ArcScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    .line 33
    sget-object v0, Lmiui/maml/elements/ScreenElement$AlignV;->CENTER:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v0, p0, Lmiui/maml/elements/ArcScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    .line 34
    return-void
.end method


# virtual methods
.method protected doTick(J)V
    .locals 3
    .param p1, "currentTime"    # J

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;->doTick(J)V

    .line 49
    invoke-virtual {p0}, Lmiui/maml/elements/ArcScreenElement;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/ArcScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    .line 54
    .local v0, "vars":Lmiui/maml/data/Variables;
    iget-object v1, p0, Lmiui/maml/elements/ArcScreenElement;->mAngleExp:Lmiui/maml/data/Expression;

    invoke-virtual {v1, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lmiui/maml/elements/ArcScreenElement;->mAngle:F

    .line 55
    iget-object v1, p0, Lmiui/maml/elements/ArcScreenElement;->mSweepExp:Lmiui/maml/data/Expression;

    invoke-virtual {v1, v0}, Lmiui/maml/data/Expression;->evaluate(Lmiui/maml/data/Variables;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lmiui/maml/elements/ArcScreenElement;->mSweep:F

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "mode"    # Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0}, Lmiui/maml/elements/ArcScreenElement;->getWidth()F

    move-result v9

    .line 39
    .local v9, "width":F
    invoke-virtual {p0}, Lmiui/maml/elements/ArcScreenElement;->getHeight()F

    move-result v6

    .line 40
    .local v6, "height":F
    div-float v0, v9, v2

    sub-float v7, v1, v0

    .line 41
    .local v7, "left":F
    div-float v0, v6, v2

    sub-float v8, v1, v0

    .line 43
    .local v8, "top":F
    new-instance v1, Landroid/graphics/RectF;

    add-float v0, v7, v9

    add-float v2, v8, v6

    invoke-direct {v1, v7, v8, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p0, Lmiui/maml/elements/ArcScreenElement;->mAngle:F

    iget v3, p0, Lmiui/maml/elements/ArcScreenElement;->mSweep:F

    iget-boolean v4, p0, Lmiui/maml/elements/ArcScreenElement;->mClose:Z

    iget-object v5, p0, Lmiui/maml/elements/ArcScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 44
    return-void
.end method
