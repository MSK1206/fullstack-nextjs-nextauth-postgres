// npx playwright test --update-snapshots
// npx playwright test or npx playwright test --ui

import { test, expect } from '@playwright/test';

test('NextJS Visual Regression Test', async ({ page }) => {
  await page.goto('http://host.docker.internal:3000/');
  // toHaveScreenshot(options):
  // 1. Fullcreen Page = fullPage: boolean
  // 2. Mask elements you want to ignore = mask:[page.locator('string')]
  await expect(page).toHaveScreenshot({
    fullPage: true,
  });
});
